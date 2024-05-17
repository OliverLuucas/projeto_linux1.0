#!/bin/bash 

echo"Atualizando sistema e instalando recursos..."
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo"Provisionando os recursos do servidor..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /var/www/html
cp -R * linux-site-dio-main
