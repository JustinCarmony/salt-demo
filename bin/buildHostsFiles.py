#!/usr/bin/env python

import subprocess
import os
import pprint

# Set current Working Directory
os.chdir(os.path.dirname(os.path.realpath(__file__)) + '/../')
print "Current Working Directory: " + os.getcwd()	

server_names = ["master", "web1", "web2", "db", "lb"]

server_ips = {}

for name in server_names:
	command = "vagrant ssh " + name + " -c \"ifconfig\" | grep inet | awk -F: '{ print $2 }' | awk '{ print $1 }' | grep --color=no \"^10\.\""
	ip = subprocess.check_output(command, shell=True).strip()
	server_ips[name] = ip

read_data = ""
with open('deploy/hosts_common', 'r') as f:
	read_data = f.read()
f.closed

# Write the hosts file

for name in server_names:
	if os.path.exists("deploy/hosts/" + name):
		os.remove("deploy/hosts/" + name)

	f = open("deploy/hosts/" + name, 'w')

	# Write the fully qualified domain
	f.write("127.0.1.1 " + name + ".saltdemo.com \n\n")

	for n in server_names:
		f.write(server_ips[n] + " " + n + ".saltdemo.com \n")
	f.write("\n")

	f.write(read_data)

	f.close()

print "Finished!"