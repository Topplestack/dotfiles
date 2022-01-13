#!/bin/bash

while true; do
read -p "Do you want to install Pantheon Terminus? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install php php-cli php-xml
            mkdir ~/terminus && cd ~/terminus
            curl -L https://github.com/pantheon-systems/terminus/releases/download/`curl --silent "https://api.github.com/repos/pantheon-systems/terminus/releases/latest" | perl -nle'print $& while m#"tag_name": "\K[^"]*#g'`/terminus.phar --output terminus
            chmod +x terminus
            sudo ln -s ~/terminus/terminus /usr/local/bin/terminus
            break ;;
        [Nn]* ) exit;;
    esac
done






