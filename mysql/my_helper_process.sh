#!/bin/bash

while ! mysqladmin ping -h"localhost" --silent; do
  echo "MySQL: Wating for main process to be ready.."
  sleep 1
done

echo 'online' > /semafors/mysql-status.txt
echo 'MySQL: Main process started.'