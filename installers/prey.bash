#!/bin/bash

while true; do
read -p "Do you want to install Prey? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install libgtk-3-dev scrot streamer mpg123
            wget https://downloads.preyproject.com/prey-client-releases/node-client/1.9.14/prey_1.9.14_amd64.deb
            sudo dpkg -i prey_1.9.14_amd64.deb
            rm prey_1.9.14_amd64.deb
            break ;;
        [Nn]* ) exit;;
    esac
done