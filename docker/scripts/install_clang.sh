#!/usr/bin/env bash

set -eux

CLANG_VERSION=${1:-13}

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
./llvm.sh $CLANG_VERSION

update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-${CLANG_VERSION} ${CLANG_VERSION}
update-alternatives --install /usr/bin/clang clang /usr/bin/clang-${CLANG_VERSION} ${CLANG_VERSION}
