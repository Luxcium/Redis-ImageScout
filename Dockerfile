# #-------------------------------------------------------------------
# BUILD luxcium/imagescout
ARG REDIS_VER=6.2.6-v7-x86_64
ARG OSNICK=23.10
ARG OS=ubuntu:${OSNICK}

# Stage 0: Get redis drivers to build the module
# #-------------------------------------------------------------------
FROM redis/redis-stack-server:${REDIS_VER} AS redis

# Stage 1: Build the module
# #-------------------------------------------------------------------
FROM ${OS} AS builder

# Install only necessary dependencies for building the module
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  ca-certificates \
  wget \
  cmake \
  make \
  gcc \
  g++ && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /build
COPY --from=redis /usr/local/ /usr/local/
ADD CMakeLists.txt *.h *.cpp *.hpp /build/
RUN set -ex; cmake -DCMAKE_BUILD_TYPE=Release . && make

# Stage 2: Setup Redis with your module
# #-------------------------------------------------------------------
FROM redis/redis-stack:${REDIS_VER}

WORKDIR /data

ENV LIBDIR /usr/lib/redis/modules
ENV SOCDIR /var/run/redis
ENV CONFDIR /etc/redis

RUN mkdir -p "${LIBDIR}" "${CONFDIR}" "${SOCDIR}"

COPY --from=builder /build/imgscout.so "${LIBDIR}"
COPY 6383.conf "${CONFDIR}"

RUN useradd redis && \
  chmod 644 "${CONFDIR}/6383.conf" && \
  chown redis "${CONFDIR}/6383.conf"

RUN chown redis:redis "${SOCDIR}" && \
  chmod 775 "${SOCDIR}" && \
  touch "${SOCDIR}/6383.sock" && \
  chown redis:redis "${SOCDIR}/6383.sock"

EXPOSE 6383

CMD ["redis-server", "/etc/redis/6383.conf"]
# #-------------------------------------------------------------------
