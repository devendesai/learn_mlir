FROM ubuntu:20.04

MAINTAINER Deven Desai <deven.desai@gmail.com>

ARG CLANG_VERSION 13
ARG PYTHON_VERSION python3.9

ENV DEBIAN_FRONTEND noninteractive

# install clang
COPY ./scripts/install_clang.sh /install/
RUN /install/install_clang.sh ${CLANG_VERSION}

# install Python3.9
COPY ./scripts/install_python3x.sh /install/
RUN /install/install_python3x.sh ${PYTHON_VERSION}
