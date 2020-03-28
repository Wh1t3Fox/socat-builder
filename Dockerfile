FROM ubuntu:bionic

RUN apt-get update && apt-get upgrade -y && \
 apt-get install -y \
   linux-headers-generic \
   build-essential \
   automake \
   curl \   
   git \
   unzip \
   wget && \
 mkdir /build

COPY . /build

VOLUME ["/output"]

ENTRYPOINT /build/entrypoint
