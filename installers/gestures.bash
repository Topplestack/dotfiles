#!/bin/bash

while true; do
read -p "Do you want to install X11 Gestures? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt install flatpak -y
            sudo apt install gnome-software-plugin-flatpak -y
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            sudo apt install touchegg -y

            break ;;
        [Nn]* ) exit;;
    esac
done