#!/bin/bash

rm -rf /etc/nginx/htpasswd/
mkdir /etc/nginx/htpasswd/
echo -n $HTTP_AUTH_LOGIN:$(openssl passwd -apr1 $HTTP_AUTH_PASSWORD) > /etc/nginx/htpasswd/$PROMETHEUS_HOST_MAINNET
echo -n $HTTP_AUTH_LOGIN:$(openssl passwd -apr1 $HTTP_AUTH_PASSWORD) > /etc/nginx/htpasswd/$PROMETHEUS_HOST_TESTNET
nginx -g "daemon off;"
