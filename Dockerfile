FROM debian:bookworm

RUN apt-get update && apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf build-essential devscripts cmake debhelper dh-exec pkg-config libboost-all-dev
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
