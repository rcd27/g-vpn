#!/bin/sh

IPS="185.88.181.58 185.88.181.56 185.88.181.60 185.88.181.55 185.88.181.53 185.88.181.54 185.88.181.57 185.88.181.59"

GLUETUN_IP="172.18.0.2 "

for IP in $IPS; do
  uci add network route
  uci set network.@route[-1].interface='lan'
  uci set network.@route[-1].target="$IP/32"
  uci set network.@route[-1].via="$GLUETUN_IP"
done

uci commit network
/etc/init.d/network restart

echo "Routes to xnxx.com established!"
