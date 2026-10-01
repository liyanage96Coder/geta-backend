#!/bin/sh

set -e

echo "Starting Laravel..."

php artisan config:clear
php artisan cache:clear

php artisan config:cache
php artisan route:cache
php artisan view:cache

php-fpm -D

nginx -g "daemon off;"