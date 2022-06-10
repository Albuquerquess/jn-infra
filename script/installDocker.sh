#!/bin/bash

echo " "
echo ">|> 0- verify internet connection"
echo " "
if nc -zw1 google.com 443; then
  echo "we have connectivity"
fi

echo " "
echo ">|> 0- END verify internet connection"
echo " "

echo " "
echo ">|> 1- create user app"
echo " "

adduser --force-badname --disabled-password --gecos "" app
echo "app:toor" | chpasswd
passwd -e app

echo " "
echo ">|> 1- END create user app"
echo " "
# echo ">|> 2- Remove docker installation and similar packages"
# apt-get -y remove docker docker-engine docker.io containerd runc
echo " "
echo ">|> 3- Update system"
echo " "

apt-get update -y

echo " "
echo ">|> 3- END Update system"
echo " "

echo " "
echo ">|> 4- install dependencies"
echo " "

apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

echo " "
echo ">|> 4- END install dependencies"
echo " "

echo " "
echo ">|> 5- install docker"
echo " "

apt-get install -y docker-ce docker-ce-cli containerd.io
usermod -aG docker app
usermod -aG sudo app

echo " "
echo ">|> 5- END install docker"
echo " "

echo " "
echo ">|> 4- install docker-composer"
echo " "

curl -L "https://github.com/docker/compoe/releases/download/1.29.2/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo " "
echo ">|> 4- END install docker-composer"
echo " "

echo " "
echo ">|> 4- push docker image"
echo " "

docker push albuquerquedev/ubuntu-orcamento-express-v1:latest

echo " "
echo ">|> 4- END push docker image"
echo " "