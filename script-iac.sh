#!/bin/bash

apt-get update 
apt-get upgrade -y
echo "Instalar Apache"

apt-get install apache2 -y

acho "Instalar Unzip"
apt-get install unzip -y


cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactar o zip"
unzip main.zip

echo "Entrando na pasta linux-site-dio"
cd linux-site-dio-main

echo "Copias arquivos do site para o servidor apache"
cp -R * /var/www/html/
