apt-get update

apt-get -y install git

wget -qO- https://get.docker.com/ | sh
usermod -aG docker $(whoami)
usermod -aG docker vagrant

apt-get -y install python-pip
pip install docker-compose

apt-get -y clean