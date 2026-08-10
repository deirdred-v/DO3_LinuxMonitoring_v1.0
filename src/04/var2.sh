#!/bin/bash

msk="$(ifconfig | grep -v 127.0.0.1 | grep netmask |awk -F '( )+' '{print $5}')"
gtw="$(ip route get 8.8.8.8 | awk -F '( )+' '{print $3}')"
rtt="$(free | grep Mem | awk '{print $2}'| awk '{printf("%.3f", $1/1024/1024)}')"
rus="$(free | grep Mem | awk '{print $3}'| awk '{printf("%.3f", $1/1024/1024)}')"
rfr="$(free | grep Mem | awk '{print $4}'| awk '{printf("%.3f", $1/1024/1024)}')"
spr="$(df / | grep dev | awk '{printf("%.2f", $2/1024)}')"
spru="$(df / | grep dev | awk '{printf("%.2f", $3/1024)}')"
sprfr="$(df / | grep dev | awk '{printf("%.2f", $4/1024)}')"