#!/bin/bash

# turn on bash's job control
set -m

# Give time to master to reset semafors
sleep 2;

# Start the primary process and put it in the background
./entrypoint.sh mysqld --user=root &

# Start the helper process
# the my_helper_process might need to know how to wait on the
# primary process to start before it does its work and returns
echo; echo '--------------------------------';
echo ' -- Starting helper process..'; echo;
./my_helper_process.sh


# Now we bring the primary process back into the foreground and leave it there
fg %1