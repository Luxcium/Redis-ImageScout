######################################################################
# BUILD luxcium/imagescout
ARG REDIS_VER=6.2.6-v4-x86_64
ARG OSNICK=buster-20230227-slim
ARG OS=debian:${OSNICK}

# #-------------------------------------------------------------------
FROM redisfab/redis-stack-server:6.2.4-v1 AS redis

# #-------------------------------------------------------------------
FROM ${OS} AS builder

RUN set -ex;\
	apt-get -q update ;\
	apt-get install -y --no-install-recommends ca-certificates wget;\
	apt-get install -y --no-install-recommends build-essential cmake

# FROM fedora:38 AS builder

# # Install dependencies and build the module
# RUN set -ex; \
# 	dnf upgrade -y \
# 	&& dnf install -y \
# 	ca-certificates \
# 	wget \
# 	cmake \
# 	make \
# 	gcc \
# 	gcc-c++ \
# 	glibc-devel \
# 	glibc-headers \
# 	kernel-devel \
# 	kernel-headers \
# 	libstdc++-static \
# 	&& dnf clean all \
# 	&& rm -rf /var/cache/dnf


WORKDIR /build
COPY --from=redis /usr/local/ /usr/local/
ADD CMakeLists.txt *.h *.cpp *.hpp /build/
RUN set -ex; \
	cmake -DCMAKE_BUILD_TYPE=Release . \
	&& make

# #-------------------------------------------------------------------
FROM redisfab/redis-stack-server:6.2.4-v1

WORKDIR /data

ENV LIBDIR /usr/lib/redis/modules
ENV SOCDIR /var/run/redis
ENV CONFDIR /etc/redis

RUN mkdir -p "${LIBDIR}" "${CONFDIR}" "${SOCDIR}"

COPY --from=builder /build/imgscout.so "${LIBDIR}"
COPY 6383.conf "${CONFDIR}"

# sudo useradd username
RUN useradd redis \
	&& chmod 644 "${CONFDIR}"/6383.conf \
	&& chown redis "${CONFDIR}"/6383.conf

# Create a UNIX socket file (optional)
RUN chown redis:redis "${SOCDIR}" \
	&& chmod 775 "${SOCDIR}" \
	&& touch "${SOCDIR}"/6383.sock \
	&& chown redis:redis "${SOCDIR}"/6383.sock

EXPOSE 6383

CMD ["redis-server", "/etc/redis/6383.conf"]
# #-------------------------------------------------------------------
######################################################################
# # :${VERSION}-${ARCH}-${OSNICK}
# docker build --build-arg REDIS_VER=${REDIS_VER} -t luxcium/imagescout:${VERSION}-${ARCH}-${OSNICK} .
# docker build --build-arg REDIS_VER=${REDIS_VER} --build-arg OSNICK=${OSNICK} -t luxcium/imagescout:${VERSION}-${ARCH}-${OSNICK} -f Dockerfile .
# docker run -it --entrypoint /bin/bash luxcium/imagescout
# redis-server /etc/redis/6383.conf
# cat redis-server /etc/redis/6383.conf | grep socket
