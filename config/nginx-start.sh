#!/bin/bash

service nginx start
tail -f /var/log/nginx/access.log &
tail -f /var/log/nginx/error.log &
/usr/sbin/php5-fpm -F

cd /data
composer self-update
php artisan cache:clear
chmod -R 777 storage
composer dump-autoload


while true; do sleep 1d; done
# nginx -g daemon off;
