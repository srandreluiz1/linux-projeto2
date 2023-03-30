#!/bin/bash

echo "Atualizando servidor."

apt-get update -y
apt-get upgrade -y

pt-get instal apache2 unzip -y

echo "Baixando e copiando a aplicação."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/ 
cp -R * /var/www/html/

