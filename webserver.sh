#!/bin/bas

echo "iniciando configuração."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
wget [application repository]
unzip [application directory]
cd [application directory]
cp -R * /var/www/html