#!/bin/bash
# Script de instalacao do Apache (Refatorado do Lab OCI)

echo "Atualizando pacotes..."
sudo apt update

echo "Instalando Apache2..."
sudo apt install apache2 -y

echo "Configurando Firewall..."
sudo ufw allow in "Apache Full"
sudo ufw enable

echo "Habilitando SSL e reiniciando..."
sudo a2enmod ssl
sudo systemctl restart apache2

echo "Instalacao concluida! Acesse http://localhost"

