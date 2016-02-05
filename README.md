# docker-iptables-tracker

The purpose is to manage iptables rules based on container names.  If a container is shutdown, then the rule assosiated with its name is also removed.  If the container is started again, then same rule will be automatically applied.  __SERVERIP__ will be replaced with the IP found in /etc/hosts for the dockername.  

>INFO: DOCKER automatically populates /etc/hosts will all dockers running on that host.

##Daemon
```sh
$iptables-trackerd&
```

##Usage:
```sh
$iptables-track -h [DOCKERNAME] -t [IPTABLES RULE, WITHOUT -A and using __SERVERIP__]
```
##Example:
```sh
$iptables-track -h pdns -t "PREROUTING -t nat -i tun0 -p $PROTOCOL --dport $PORT -j DNAT --to __SERVERIP__:$PORT"
```
