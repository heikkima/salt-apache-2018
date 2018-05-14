#!/bin/bash

echo "Installing salt-master"
sudo apt-get update && sudo apt-get install -y salt-master

cd /srv/
git clone -b final-module https://github.com/heikkima/salt-apache-2018.git salt
