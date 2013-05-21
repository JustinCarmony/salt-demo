#!/bin/bash

sudo cat /vagrant/deploy/hosts/$1 > /etc/hosts

#rm /root/provision-finished.txt

if [ ! -f /root/provision-finished.txt ]; then

	echo "Installing Minion"

	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:saltstack/salt
	sudo apt-get update
	sudo apt-get -y install salt-minion

	touch /root/provision-finished.txt

fi

cat /vagrant/deploy/config/minion > /etc/salt/minion

/etc/init.d/salt-minion restart

