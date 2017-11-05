#!/bin/sh

composer install
php artisan migrate:reset
php artisan migrate
php artisan db:seed
php artisan users:create

php -S 0.0.0.0:8080 -t public/