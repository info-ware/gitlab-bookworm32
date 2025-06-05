FROM debian:bookworm

COPY source_buster /tmp
RUN cat /tmp/source_buster >>/etc/apt/sources.list.d/debian.sources
RUN apt-get update
RUN apt-get install -y bzip2 gnupg
RUN apt-get install -y build-essential 
RUN apt-get install -y devscripts cmake debhelper dh-exec pkg-config libboost-all-dev
RUN apt-get install -y gcc-8-arm-linux-gnueabihf g++-8-arm-linux-gnueabihf 
RUN ln -s /usr/bin/arm-linux-gnueabihf-gcc-8 /usr/bin/arm-linux-gnueabihf-gcc
RUN ln -s /usr/bin/arm-linux-gnueabihf-g++-8 /usr/bin/arm-linux-gnueabihf-g++
RUN apt-get install -y libboost-filesystem-dev 
RUN apt-get install -y libasound2-dev libgles2-mesa-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y uuid-dev
RUN apt-get install -y rsync
RUN apt-get install -y libxext-dev
RUN apt-get install -y qt6-base-dev

RUN dpkg --add-architecture armhf
RUN apt-get update && apt-get install -y libasound2-dev:armhf libgles2-mesa-dev:armhf
RUN apt-get install -y libboost-filesystem-dev:armhf
RUN apt-get install -y libcurl4-openssl-dev:armhf
RUN apt-get install -y zlib1g-dev:armhf
RUN apt-get install -y uuid-dev:armhf
RUN apt-get install -y libxext-dev:armhf
RUN apt-get install -y qt6-base-dev:armhf
