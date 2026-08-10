#!/bin/bash

hn="$(hostname)"
tz="$(date +%Z)"
user="$(whoami)"
osv="$(head -1 /etc/issue | awk '{print $1" "$2" "$3}')"
dt="$(date -u +%e\ %B\ %Y\ %T)"
upt="$(uptime -p)"
upts="$(cat /proc/uptime | awk -F '( )+' '{print $1,"sec"}')"
ipad="$(ifconfig | grep -m1 inet | awk '{print $2}')"