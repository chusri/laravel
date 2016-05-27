#!/bin/bash
service nginx start
tail -f /var/log/nginx/access.log &
tail -f /var/log/nginx/error.log &
/usr/sbin/php5-fpm -F
while true; do sleep 1d; done
# nginx -g daemon off;
