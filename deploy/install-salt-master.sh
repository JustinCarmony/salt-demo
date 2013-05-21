#!/bin/bash

# Copy over new hosts file

sudo cat /vagrant/deploy/hosts/$1 > /etc/hosts

# Remove provision finished to re-run
#rm /root/provision-finished.txt

if [ ! -f /root/provision-finished.txt ]; then
	echo "Installing Master"

	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:saltstack/salt
	sudo apt-get update
	sudo apt-get -y install salt-master
	sudo apt-get -y install salt-minion

	ln -s /vagrant/saltstack/salt /srv/salt
	ln -s /vagrant/saltstack/pillar /srv/pillar

	touch /root/provision-finished.txt
fi

cat /vagrant/deploy/config/master > /etc/salt/master
cat /vagrant/deploy/config/minion > /etc/salt/minion

/etc/init.d/salt-master restart
/etc/init.d/salt-minion restart

