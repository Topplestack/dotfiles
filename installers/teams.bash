#!/bin/bash

while true; do
read -p "Do you want to install Microsoft Teams Preview? y/n: " yn
    case $yn in
        [Yy]* )
            sudo apt-get update -y
            sudo apt-get install -y libgdk-pixbuf2.0-0
            wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb
            sudo dpkg -i teams_1.4.00.7556_amd64.deb
            rm teams_1.4.00.7556_amd64.deb
            break ;;
        [Nn]* ) exit;;
    esac
done