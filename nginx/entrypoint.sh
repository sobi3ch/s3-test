#!/bin/sh

# Give time to master to reset semafors
sleep 2;

# Wait for mysql until is online
while test "$(cat /semafors/nginx-start.txt)" != "1"
do
  echo "Nginx: Waiting for MySQL to be ready..";
  sleep 1;
done

# Starting nginx..
echo; echo '--------------------------------';
echo "Nginx: MySQL is ready. Starting myself.."; echo;

nginx -g "daemon off;"