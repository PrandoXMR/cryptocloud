#!/usr/bin/env bash

sudo apt-get -y install git build-essential cmake automake libtool autoconf wget

cd $HOME/cryptocloud
git checkout 2bc53582b87aa9315ebabafa0fd5e43984ced65f
cd $HOME
git clone https://github.com/xmrig/xmrig.git
cd $HOME/xmrig
git checkout d82e100e303f6e860506132d009de5d4328c420a
mkdir build
cp $HOME/cryptocloud/xmrig/build/tweak/config.json $HOME/xmrig/src/
cp $HOME/cryptocloud/xmrig/build/tweak/strategies/DonateStrategy.cpp $HOME/xmrig/src/net/strategies
cd scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)






