Before starting, make sure that the master computer if listening 4505/tcp and 4506/tcp

To install master:
```
wget https://raw.githubusercontent.com/heikkima/salt-apache-2018/final-module/master.sh && sudo bash master.sh
```
After running script you will have to accept own key ``sudo salt-key -A``


To install minion:
```
