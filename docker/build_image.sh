#!/usr/bin/env bash

set -eux

DOCKER_IMAGE=devendesai/public:mlir_develop

DOCKERFILE=Dockerfile

DOCKER_BUILD_ARGS=""


docker build -t $DOCKER_IMAGE -f $DOCKERFILE $DOCKER_BUILD_ARGS .
