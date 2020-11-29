#!/usr/bin/env bash

tput setaf 2; echo "Install Atom Editor"; tput sgr0
wget https://atom.io/download/deb
sudo dpkg -i atom-amd64.deb

apm install sync-settings
