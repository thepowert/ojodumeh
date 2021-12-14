!#/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]} index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
./SRBMiner-MULTI --disable-gpu --algorithm verushash --pool na.luckpool.net:3956 --wallet RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5.worker-$worker --password x --t $(nproc --all)
