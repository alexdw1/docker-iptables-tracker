#!/bin/bash
PORT=53
PROTOCOL=tcp

./ipt-tracker -h pdns -t "PREROUTING -t nat -i tun0 -p $PROTOCOL --dport $PORT -j DNAT --to __SERVERIP__:$PORT"
./ipt-tracker -h unbound -t "PREROUTING -t nat -i tun0 -p $PROTOCOL --dport $PORT -j DNAT --to __SERVERIP__:$PORT"

