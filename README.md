# Install Vagrant

## Requirements

This project uses Vagrant and VirtualBox.

### Install Vagrant

Install Vagrant with the following command in the terminal

```
sudo apt-get install vagrant
```

Check the version of Vagrant after installation

```
vagrant --version
```

### Install VirtualBox

Install Vagrant with the following command in the terminal

```
sudo apt-get install virtualbox
```

## Usage: init the Vagrant project

It will install vagrant environment and install some dependencies before running Ansible playbook.

The playbook will install Vim, Git, Docker and Docker Compose (it will install the last version of packages).

```
make init
```
