#!/bin/bash

# remove gnome bundled games
sudo apt purge iagno lightsoff four-in-a-row gnome-robots pegsolitaire gnome-2048 hitori gnome-klotski gnome-mines gnome-mahjongg gnome-sudoku quadrapassel swell-foop gnome-tetravex gnome-taquin aisleriot tali && sudo apt autoremove

# Enable gnome tweaks from command line
sudo apt install gnome-tweaks gnome-shell-extensions -y

## Add maximize, minimize to app titlebar
gsettings set org.gnome.desktop.wm.preferences button-layout appmenu:minimize,maximize,close

## Disable natural scroll direction on touchpad
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false

## Enable tap-to-click on touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

## Set theme to dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

## Set time format to 12h
gsettings set org.gnome.desktop.interface clock-format 12h

## Disable hotcorners
gsettings set org.gnome.desktop.interface enable-hot-corners false

# Install Gnome Shell Extension Installer to install gnome
# Extensions via terminal commands
sudo apt install curl
wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod +x gnome-shell-extension-installer
sudo mv gnome-shell-extension-installer /usr/bin/

## removable-drive-menu
gnome-shell-extension-installer 7

## user-themes
gnome-shell-extension-installer 19

## dash-to-dock
gnome-shell-extension-installer 307

## bluetooth-quick-connect
gnome-shell-extension-installer 1401

## extension-list
gnome-shell-extension-installer 3088

## tiling-assistant
gnome-shell-extension-installer 3733

## just-perfection
gnome-shell-extension-installer 3843

## transparent-top-bar-adjustable-transparency
gnome-shell-extension-installer 3960

## x-11 gestures
gnome-shell-extension-installer 4033

# killall -3 gnome-shell

# Auto set favorite background
mkdir ~/Pictures/Wallpapers
wget https://w.wallhaven.cc/full/96/wallhaven-96737w.jpg -P ~/Pictures/Wallpapers
gsettings set org.gnome.desktop.background picture-uri file:///home/jesset/Pictures/Wallapers/wallhaven-96737w.jpg