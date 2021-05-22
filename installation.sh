#!/usr/bin/env bash

Wallet=$1
Pool=$2



sudo apt-get -y install git build-essential cmake automake libtool autoconf wget

git clone https://github.com/xmrig/xmrig.git
cd xmrig
git checkout d82e100e303f6e860506132d009de5d4328c420a
mkdir build && cd scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)


