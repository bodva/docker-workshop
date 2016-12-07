#!/bin/bash

apt-get update

# install git
apt-get -y install git

# install docker
wget -qO- https://get.docker.com/ | sh

# add current user to docker group and add vagrant user to docker group
usermod -aG docker $(whoami)

# if it's vagrant enviroment and vagrant user exist
if (( $(grep -c "vagrant" /etc/passwd) )) ; then
    usermod -aG docker vagrant
fi

apt-get -y install python-pip
pip install docker-compose

apt-get -y clean