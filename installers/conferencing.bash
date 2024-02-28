#!/bin/bash

while true; do
read -p "Do you want to install Zoom? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install libgl1-mesa-glx libegl1-mesa libxcb-xtest0
            wget https://zoom.us/client/latest/zoom_amd64.deb
            sudo dpkg -i zoom_amd64.deb
            rm zoom_amd64.deb
            break ;;
        [Nn]* ) exit;;
    esac
done