#!/bin/sh

# In the beginning mysql is offline
echo 'offline' > /semafors/mysql-status.txt
echo '0' > /semafors/nginx-start.txt

# Wait for mysql until is online
while test "$(cat /semafors/mysql-status.txt)" != "online"
do
  echo "Master: Waiting for MySQL to be ready..";
  sleep 1;
done

echo "Master: MySQL is ready. Starting nginx..";

# Starting nginx..
echo '1' > /semafors/nginx-start.txt
