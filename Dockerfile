FROM debian:11-slim

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install unzip

WORKDIR /app

ARG VORTEX_VERSION=1.1.7
ADD https://www.vtxhub.com/download/${VORTEX_VERSION}/linux/vortex.zip .
RUN unzip vortex.zip

ENTRYPOINT ./vortex
