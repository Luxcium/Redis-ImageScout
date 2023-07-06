# BUILD starkdg/imagescout:${VERSION}-${ARCH}-${OSNICK}
# redis/redis-stack:7.2.0-RC2-x86_64 (redis:7.2.0-RC2-x86_64)
# ARG REDIS_VER=6.0.7 redis/redis-stack-server:

ARG REDIS_VER=7.2.0-RC2-x86_64

# bionic|stretch|buster|etc
ARG OSNICK=buster

# debian:buster-slim|debian:stretch-slim|ubuntu:bionic
#debian:buster-slim
# gcc
# ARG OS=debian:buster-slim
ARG OS=debian:buster-slim


# x64|arm64v8|arm32v7|etc
ARG ARCH=x86_64

#---------------------------------------------------------------------
# redisfab/redis-stack-server:6.2.4-v1
# FROM redisfab/redis:${REDIS_VER}-${ARCH}-${OSNICK} AS redis
FROM redis/redis-stack-server:${REDIS_VER} AS redis

# Build based on ${OS} (i.e. 'builder'), redis files are copies from 'redis'
FROM ${OS} AS builder

# Re-introduce arguments to this image
ARG OSNICK
ARG OS
ARG ARCH
ARG REDIS_VER

RUN echo "Building for $OSNICK ($OS) FOR $ARCH"
# RUN sed -i '/stretch-updates/d' /etc/apt/sources.list

WORKDIR /build
COPY --from=redis /usr/local/ /usr/local/
ADD CMakeLists.txt *.h *.cpp *.hpp /build/

RUN set -ex;\
	apt-get -q update ;\
	apt-get install -y --no-install-recommends ca-certificates wget;\
	apt-get install -y --no-install-recommends build-essential cmake

RUN set -ex;\
	cmake -DCMAKE_BUILD_TYPE=Release . ;\
	make


#--------------------------------------------------------------------

# FROM redisfab/redis:${REDIS_VER}-${ARCH}-${OSNICK}
FROM redis/redis-stack:${REDIS_VER}

ARG OSNICK
ARG OS
ARG ARCH
ARG REDIS_VER

WORKDIR /data

ENV LIBDIR /usr/lib/redis/modules
ENV LIBREDIS /usr/lib/redis

RUN mkdir -p $LIBDIR

RUN cp /opt/redis-stack/lib/redistimeseries.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/redistimeseries.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/redisbloom.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/rejson.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/redisearch.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/redisgears.so "$LIBDIR"; \
	cp /opt/redis-stack/lib/libredisgears_v8_plugin.so "$LIBDIR";
COPY --from=builder /build/imgscout.so "$LIBDIR"
COPY ./6383.conf "$LIBREDIS"
# sudo useradd username
RUN chmod 644 /usr/lib/redis/6383.conf && useradd redis && chown redis /usr/lib/redis/6383.conf

RUN ls -alh $LIBDIR
RUN ls -alh $LIBREDIS

EXPOSE 6383

CMD ["redis-server", "/usr/lib/redis/6383.conf"]


# #--------------------------------------------------------------------

# # FROM redisfab/redis:${REDIS_VER}-${ARCH}-${OSNICK} // :6.2.4-v1
# FROM redis/redis-stack:${REDIS_VER} as stack

# ARG OSNICK
# ARG OS
# ARG ARCH
# ARG REDIS_VER

# WORKDIR /data

# # /usr/lib/redis/modules
# ENV LIBDIR /usr/lib/redis/modules
# ENV LIBREDIS /usr/lib/redis

# RUN mkdir -p $LIBDIR
# RUN mkdir -p $LIBREDIS

# COPY --from=builder /build/imgscout.so "$LIBDIR"
# # RUN cp /opt/redis-stack/lib/redistimeseries.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/redistimeseries.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/redisbloom.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/rejson.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/redisearch.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/redisgears.so "$LIBDIR"; \
# # 	cp /opt/redis-stack/lib/libredisgears_v8_plugin.so "$LIBDIR";

# COPY ./6383.conf "$LIBREDIS"
# # sudo useradd username
# RUN chmod 644 ${LIBREDIS}/6383.conf && useradd redis && chown redis:root ${LIBREDIS}/6383.conf
# RUN chmod 644 -R ${LIBDIR} && chown redis:root -R ${LIBDIR}

# RUN ls -alh $LIBDIR
# RUN ls -alh $LIBREDIS

# EXPOSE 6383
# CMD ["redis-server", "/usr/lib/redis/6383.conf"]


# #-------------------------------------------------------------------
# #-------------------------------------------------------------------
# # BUILD starkdg/imagescout:${VERSION}-${ARCH}-${OSNICK}

# # ARG REDIS_VER=6.0.7

# ARG REDIS_VER=7.0.4

# # bionic|stretch|buster|etc
# ARG OSNICK=buster

# # debian:buster-slim|debian:stretch-slim|ubuntu:bionic
# ARG OS=debian:buster-slim

# # x64|arm64v8|arm32v7|etc
# ARG ARCH=x64

# #--------------------------------------------------------------------
# # redisfab/redis-stack-server:6.2.4-v1
# # FROM redisfab/redis:${REDIS_VER}-${ARCH}-${OSNICK} AS redis
# FROM redisfab/redis-stack-server:6.2.4-v1 AS redis

# # Build based on ${OS} (i.e. 'builder'), redis files are copies from 'redis'
# FROM ${OS} AS builder

# # Re-introduce arguments to this image
# ARG OSNICK
# ARG OS
# ARG ARCH
# ARG REDIS_VER

# RUN echo "Building for $OSNICK ($OS) FOR $ARCH"

# WORKDIR /build
# COPY --from=redis /usr/local/ /usr/local/
# ADD CMakeLists.txt *.h *.cpp *.hpp /build/

# RUN set -ex;\
# 	apt-get -q update ;\
# 	apt-get install -y --no-install-recommends ca-certificates wget;\
# 	apt-get install -y --no-install-recommends build-essential cmake

# RUN set -ex;\
# 	cmake -DCMAKE_BUILD_TYPE=Release . ;\
# 	make

# #--------------------------------------------------------------------

# # FROM redisfab/redis:${REDIS_VER}-${ARCH}-${OSNICK}
# FROM redisfab/redis-stack-server:6.2.4-v1

# ARG OSNICK
# ARG OS
# ARG ARCH
# ARG REDIS_VER

# WORKDIR /data

# ENV LIBDIR /usr/lib/redis/modules
# ENV LIBREDIS /usr/lib/redis

# RUN mkdir -p $LIBDIR

# COPY --from=builder /build/imgscout.so "$LIBDIR"
# COPY ./6383.conf "$LIBREDIS"
# # sudo useradd username
# RUN chmod 644 /usr/lib/redis/6383.conf && useradd redis && chown redis /usr/lib/redis/6383.conf

# EXPOSE 6383

# CMD ["redis-server", "/usr/lib/redis/6383.conf"]
