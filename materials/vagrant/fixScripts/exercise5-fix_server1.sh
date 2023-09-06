#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install sshpass -y

ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa <<< y
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
chmod 764 /home/vagrant/.ssh/id_rsa.pub

sudo sed -i '$a\    StrictHostKeyChecking no' /etc/ssh/ssh_config
