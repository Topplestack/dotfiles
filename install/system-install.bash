#!/bin/bash

tput setaf 2; echo "Upgrade Ubuntu"; tput sgr0
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted

sudo apt update -qq
sudo apt upgrade dist -y

tput setaf 2; echo "Install git, curl, zips ..."; tput sgr0
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y tree
sudo apt install -y build-essential
sudo apt install -y ppa-purge
sudo apt install -y git
sudo apt install -y git-lfs
sudo apt install -y git-flow
sudo apt install -y openssh-client
sudo apt install -y openssh-server
sudo apt install -y shellcheck
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-tweak-tool
sudo apt install -y gnome-shell-extensions
sudo apt install -y libssl-dev
sudo apt install -y fonts-firacode
sudo apt install -y direnv
sudo apt install -y bash-completion
sudo apt install -y fonts-powerline

# tput setaf 2; echo "Install chrome, vlc, krita, gimp"; tput sgr0


# Change swappiness, default 60, 0 disable
echo vm.swappiness=0 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Change nuber of inotify max watcher, default 8192
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
# Change nuber of inotify max queued events, default 16384
echo fs.inotify.max_queued_events=32768 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
# Change nuber of inotify max user instances, default 128
echo fs.inotify.max_user_instances=256 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


tput setaf 2; echo "Do you want to install Zeal - Documentation"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo apt install -y zeal
            break;;
        No ) break;;
    esac
done


tput setaf 2; echo "Do you want to install PPA Manager"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo add-apt-repository ppa:webupd8team/y-ppa-manager
            sudo apt update -qq
            sudo apt install -y  y-ppa-manager
            break;;
        No ) break;;
    esac
done


tput setaf 2; echo "Do you want to install Steam"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo apt -y install steam
            break;;
        No ) break;;
    esac
done


tput setaf 2; echo "Do you want to install Discord"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo apt install -y discord
            break;;
        No ) break;;
    esac
done


tput setaf 2; echo "Do you want to install RhytmBox"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo apt install -y rhythmbox
            break;;
        No ) break;;
    esac
done

tput setaf 2; echo "Do you want to install Gnome Extended Gestures"; tput sgr0
select yn in "Yes" "No"; do
    case $yn in
        Yes )
            sudo apt install -y libinput-tools
            git clone https://github.com/mpiannucci/gnome-shell-extended-gestures
            cp -r gnome-shell-extended-gestures/extendedgestures@mpiannucci.github.com ~/.local/share/gnome-shell/extensions
            break;;
        No ) break;;
    esac
done

# doto: add in message about: sudo nano /etc/gdm3/custom.conf 