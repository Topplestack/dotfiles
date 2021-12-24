#!/bin/bash

# Enable gnome tweaks from command line
sudo apt install gnome-tweaks gnome-shell-extensions -y

# Set scroll direction to proper up down.
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false

# Auto set favorite background
mkdir ~/Pictures/Wallpapers
wget https://w.wallhaven.cc/full/96/wallhaven-96737w.jpg -P ~/Pictures/Wallpapers
gsettings set org.gnome.desktop.background picture-uri file:///home/jesset/Pictures/Wallapers/wallhaven-96737w.jpg