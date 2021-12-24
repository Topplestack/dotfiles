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
            sudo apt install flatpak touchegg gnome-software-plugin-flatpak -y
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            sudo flatpak install https://dl.flathub.org/repo/appstream/com.github.joseexposito.touche.flatpakref
            break ;;
        [Nn]* ) exit;;
    esac
done