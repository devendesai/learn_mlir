#!/usr/bin/env bash

set -eux

CMAKE_VERSION=${1:-"3.22.2"}

apt-get update

apt-get purge -y cmake

wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-Linux-x86_64.sh
chmod +x cmake-$CMAKE_VERSION-Linux-x86_64.sh
./cmake-$CMAKE_VERSION-Linux-x86_64.sh --skip-license --prefix=/usr/local
