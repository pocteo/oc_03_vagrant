#!/bin/bash

# We rely on the official documentation of Ansible
# See https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-debian
echo "Install Ansible..."
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee -a /etc/apt/sources.list > /dev/null 2>&1
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install ansible -y > /dev/null 2>&1

