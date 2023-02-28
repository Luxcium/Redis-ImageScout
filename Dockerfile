################################
# /projects/monorepo-one/services/image-scout/Dockerfile
# BUILD starkdg/imagescout:${VERSION}-${ARCH}-${OSNICK}

ARG REDIS_VER=6.2.6-v4-x86_64

#---------------------------------------------------------------------
# Use the redis/redis-stack base image
FROM redis/redis-stack:${REDIS_VER} AS redis

# Build based on an optimized OS, redis files are copied from 'redis'
FROM debian:buster-slim AS builder

# Install dependencies and build the module
RUN apt-get update \
  && apt-get install -y \
  --no-install-recommends ca-certificates \
  wget build-essential cmake \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /build
COPY --from=redis /usr/local/ /usr/local/
COPY CMakeLists.txt *.h *.cpp *.hpp /build/
RUN cmake -DCMAKE_BUILD_TYPE=Release .
RUN make

#--------------------------------------------------------------------

# Use the redis/redis-stack base image
FROM redis/redis-stack:${REDIS_VER}

# Set environment variables
ENV LIBDIR /usr/lib/redis/modules
ENV CONFDIR /etc/redis

# Copy the module and conf file
RUN mkdir -p ${LIBDIR} ${CONFDIR}
COPY --from=builder /build/imgscout.so ${LIBDIR}
COPY ./6383.conf ${CONFDIR}

# Create the redis user and set permissions on the conf file
RUN useradd redis \
  && chmod 644 ${CONFDIR}/6383.conf \
  && chown redis ${CONFDIR}/6383.conf

# Create a UNIX socket file (optional)
RUN mkdir -p /var/run/redis \
  && chown redis:redis /var/run/redis \
  && chmod 775 /var/run/redis \
  && touch /var/run/redis/6383.sock \
  && chown redis:redis /var/run/redis/6383.sock

EXPOSE 6383

CMD ["redis-server", "/usr/lib/redis/6383.conf"]
################################
