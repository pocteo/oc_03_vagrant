#!/bin/bash

sudo apt-get update > /dev/null 2>&1
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y > /dev/null 2>&1

