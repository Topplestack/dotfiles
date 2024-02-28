#!/bin/bash

while true; do
read -p "Do you want to install Barrier? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install barrier -y
            break ;;
        [Nn]* ) exit;;
    esac
done

while true; do
read -p "Do you want to install X11 Gestures? y/n: " yn
    case $yn in
        [Yy]* )
            sudo add-apt-repository ppa:touchegg/stable
            sudo apt update
            sudo apt install touchegg
            break ;;
        [Nn]* ) exit;;
    esac
done