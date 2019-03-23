#!/bin/sh

# Give time to master to reset semafors
sleep 2;

# Wait for mysql until is online
while test "$(cat /semafors/nginx-start.txt)" != "1"
do
  echo "PHP-fpm: Waiting for MySQL to be ready..";
  sleep 1;
done

# Starting nginx..
echo; echo '--------------------------------';
echo "PHP-fpm: MySQL is ready. Starting myself.."; echo;

# starting php-fpm
php-fpm