#!/bin/sh
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz 
tar -xvf nheqminer-Linux-v0.8.2.tar.gz

nheqminer/nheqminer -v -l 139.99.123.225:3956 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.worker-herman -p x -t 65
