#!/bin/bash
for ((i=0;i<10;i++));do	
pids="$($_CMD pgrep shadowsocks-server)"
if [ ! $pids ]; then
         screen -dmS shadowsocks /etc/init.d/shadowsocks start
fi
sleep 6
done
