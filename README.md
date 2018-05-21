This module installs NGINX and configures loadbalancer server and adds webservers to the loadbalancer cluster.
More info in https://heikkima.wordpress.com/2018/05/15/palvelinten-hallinta-2018-loadbalancer-moduuli/

Before starting, make sure that the master computer is listening 4505/tcp and 4506/tcp

### To install master:
```
wget https://raw.githubusercontent.com/heikkima/salt-apache-2018/final-module/master.sh && sudo bash master.sh
```
After running script you will have to accept own key ``sudo salt-key -A``


### To install minion:
```
wget https://raw.githubusercontent.com/heikkima/salt-apache-2018/final-module/minion.sh && sudo bash minion.sh
```

After accepting minion's key. Add manually  minion(s) public IP in ``loadbalancer/default`` file. 

### Run state in master
```
sudo salt "*" state.highstate
```
