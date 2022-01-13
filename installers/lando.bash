#!/bin/bash

while true; do
read -p "Do you want to install Docker? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt-get remove docker docker-engine docker.io containerd runc
            sudo apt-get update -y
            sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
            echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
            sudo apt-get update -y
            sudo apt-get install -y docker-ce docker-ce-cli containerd.io
            break;;
        [Nn]* ) break;;
    esac
done

while true; do
read -p "Do you want to install Docker-Compose? y/n: " yn
    case $yn in
        [Yy]* )
            sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
            sudo chmod +x /usr/local/bin/docker-compose
            break;;
        [Nn]* ) break;;
    esac
done

while true; do
read -p "Do you want to install Lando? y/n: " yn
    case $yn in
        [Yy]* )
            wget https://files.devwithlando.io/lando-latest.deb
            sudo dpkg -i lando-latest.deb
            rm lando-latest.deb
            break;;
        [Nn]* ) break;;
    esac
done