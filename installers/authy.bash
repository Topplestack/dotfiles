#!/bin/bash

while true; do
read -p "Do you want to install Authy? y/n: " yn
    case $yn in
        [Yy]* )
            sudo snap install authy -y
            break ;;
        [Nn]* ) exit;;
    esac
done
