#!/bin/bash

while true; do
read -p "Do you want to install Authy? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install evolution-ews -y
            break ;;
        [Nn]* ) exit;;
    esac
done
