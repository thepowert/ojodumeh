#!/bin/sh

wget http://ppa.launchpad.net/dajhorn/dante/ubuntu/pool/main/d/dante/dante-server_1.4.1-1_amd64.deb -y
sudo apt-get install gdebi-core -y
sudo gdebi dante-server_1.4.1-1_amd64.deb -y
#
nano /etc/danted.conf
#
wget https://raw.githubusercontent.com/mangundarisman/manggudia/main/nano/etc/danted.conf
#
service danted start
#
service danted status
#
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz 
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
#
nheqminer/nheqminer -v -l eu.luckpool.net:3956 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.Cloud_03 -p x -t 8
