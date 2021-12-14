#!/bin/sh

apt-get update

apt-get install sudo

apt-get install git -y

sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y

git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git

cd ccminer

chmod +x build.sh

chmod +x configure.sh

chmod +x autogen.sh

./build.sh

while [ 1 ]; do

./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.Hayabusa -p x -t $(nproc) -x socks5://192.111.139.162:4145

sleep 3

done

sleep 999
