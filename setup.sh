#!/bin/sh

# Setup static IP
echo 'interface wlan0' >> /etc/dhcpcd.conf
echo 'static ip_address=192.168.0.55/24' >> /etc/dhcpcd.conf
echo 'static routers=192.168.0.1' >> /etc/dhcpcd.conf
echo 'static domain_name_servers=192.168.0.1' >> /etc/dhcpcd.conf

# Setup docker and docker-compose
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo apt-get install libffi-dev libssl-dev -y
sudo apt-get install -y python python-pip
sudo apt-get remove python-configparser -y
sudo pip install docker-compose

# Reboot
reboot
