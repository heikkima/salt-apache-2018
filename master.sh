#!/bin/bash

echo "Installing salt-master"
sudo apt-get update && sudo apt-get install -y salt-master salt-minion

echo "Create new minion file"
sudo mv /etc/salt/minion /etc/salt/minion.original

printf "master: " >> minion
curl -s http://whatismyip.akamai.com/ >> minion
printf "id: master" >> minion
sudo mv minion /etc/salt/

cd /srv/
git clone -b final-module https://github.com/heikkima/salt-apache-2018.git salt

