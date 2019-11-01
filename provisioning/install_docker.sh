#!/bin/bash

docker_compose_version="$1"

echo "Install Docker CE & Compose"
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - > /dev/null 2>&1
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable" > /dev/null 2>&1

sudo apt-get update > /dev/null 2>&1
sudo apt-get install docker-ce docker-ce-cli containerd.io -y > /dev/null 2>&1
sudo usermod -a -G docker vagrant

sudo curl -L "https://github.com/docker/compose/releases/download/$docker_compose_version/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose > /dev/null 2>&1
sudo chmod +x /usr/local/bin/docker-compose

