FROM amazonlinux:latest

COPY client1.cpp ./etc/cpp/
COPY client2.cpp ./etc/cpp/
COPY server1.cpp ./etc/cpp/
COPY server2.cpp ./etc/cpp/
COPY Makefile ./etc/cpp/

RUN apt update
RUN apt install g++ gcc nano binutils mingw-w64 -y

WORKDIR ./etc/cpp/

CMD make

MAINTAINER Alexey Semenkov <sealekssaa@gmail.com>