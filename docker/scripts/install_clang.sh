#!/usr/bin/env bash

set -eux

apt-get update && apt-get install -y \
    git \
    lsb-release \
    software-properties-common \
    wget && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

CLANG_VERSION=${1:-13}

wget --no-check-certificate https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
./llvm.sh $CLANG_VERSION

update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-${CLANG_VERSION} ${CLANG_VERSION}
update-alternatives --install /usr/bin/clang clang /usr/bin/clang-${CLANG_VERSION} ${CLANG_VERSION}
