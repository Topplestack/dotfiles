#!/bin/bash

while true; do
read -p "Do you want to install Gitkraken? y/n: " yn
    case $yn in
        [Yy]* )
            wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
            sudo dpkg -i gitkraken-amd64.deb
            rm gitkraken-amd64.deb
            break ;;
        [Nn]* ) exit;;
    esac
done