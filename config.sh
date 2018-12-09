#!/bin/bash

sed -i 's/\[port\]/'"$PORT"'/g' /etc/nginx/conf.d/default.conf

HOST_IP=`echo $HOST|sed 's/\(.*\):.*/\1/g'`
sed -i 's/\[host_ip\]/'"$HOST_IP"'/g' /etc/nginx/conf.d/default.conf

HOST_PORT=`echo $HOST|sed 's/.*:\(.*\)/\1/g'`
sed -i 's/\[host_port\]/'"$HOST_PORT"'/g' /etc/nginx/conf.d/default.conf

nginx

/natapp -authtoken $TOKEN