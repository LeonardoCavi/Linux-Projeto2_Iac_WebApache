#!/bin/bash

echo "Atualizando o Servidor Linux..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2 no ambiente..."
apt-get install apache2 -y

echo "Instalando o Unzip no ambiente..."
apt-get install unzip -y

echo "Baixando site teste no repositório público..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo .zip..."
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos para pasta do Apache..."
cp -R * /var/www/html/

