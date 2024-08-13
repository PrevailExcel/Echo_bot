#!/usr/bin/env bash
# echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www/html

php artisan optimize:clear

php artisan migrate:fresh --seed

php artisan optimize

# php artisan queue:work

