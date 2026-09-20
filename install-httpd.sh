#!/bin/bash

sudo apt-get update
sudo apt install apache2
echo "Installed"
sleep 10
systemctl start apache2
systemctl enable apache2
systemctl status apache2

mv /tmp/Hello-Kenshin/index.html /var/www/html
[ -f "/var/www/index.html" ] && echo "File exists" || echo "File not exist"
