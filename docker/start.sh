#!/bin/sh

set -e

echo "Starting Laravel..."

php artisan config:clear

php artisan migrate --force

php-fpm -D

nginx -g "daemon off;"