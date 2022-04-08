FROM ubuntu:20.04

MAINTAINER Deven Desai <deven.desai@gmail.com>

ARG CLANG_VERSION 14
ARG PYTHON_VERSION python3.9
ARG CMAKE_VERSION "3.22.2"

WORKDIR /install

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
git \
lsb-release \
software-properties-common \
wget 

# # install Python3.9
# COPY ./scripts/install_python3x.sh /install/
# RUN /install/install_python3x.sh ${PYTHON_VERSION}

# install cmake
COPY ./scripts/install_cmake.sh /install/
RUN /install/install_cmake.sh ${CMAKE_VERSION}

# install ninja
COPY ./scripts/install_ninja.sh /install/
RUN /install/install_ninja.sh 

# install clang
COPY ./scripts/install_clang.sh /install/
RUN /install/install_clang.sh ${CLANG_VERSION}

# copy the script to clone llvm repo and ru
COPY ./scripts/clone_llvm_repo.sh /scripts/
COPY ./scripts/build_check_mlir.sh /scripts/

WORKDIR /root
