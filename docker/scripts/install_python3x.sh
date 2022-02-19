#!/usr/bin/env bash

set -eux

yes | add-apt-repository ppa:deadsnakes/ppa
apt-get update

PYTHON_3X=${1:-python3.9}

export DEBIAN_FRONTEND=noninteractive

apt-get install -y --upgrade $PYTHON_3X
apt-get install -y $PYTHON_3X-dev
apt-get install -y $PYTHON_3X-distutils
apt-get install -y python3-pip

ln -sf /usr/bin/$PYTHON_3X /usr/local/bin/$PYTHON_3X
update-alternatives --install /usr/bin/python3 python3 /usr/bin/$PYTHON_3X 1
update-alternatives --set python3 /usr/bin/$PYTHON_3X

pip3 install --upgrade pip
pip3 install --upgrade setuptools
