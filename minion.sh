#!/bin/bash

echo "
Install salt-minion
"
sudo apt-get update -y && sudo apt-get install -y salt-minion

echo "
Create new minion file
"
sudo mv /etc/salt/minion /etc/salt/minion.original

echo "What is master's public IP?"
read public_ip
echo "What is minions id (number)"
read id

printf "master: $public_ip\n" >> minion
printf "id: webserver$id" >> minion

sudo mv minion /etc/salt/

sudo systemctl restart salt-minion.service

echo "
Please accept the key from master
"
