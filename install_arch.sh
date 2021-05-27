#!/bin/sh 
# Installing packages 
sudo pacman -S --noconfirm openssh
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm termite
sudo pacman -S --noconfirm python-pywal
sudo pacman -S --noconfirm rofi 
sudo pacman -S --noconfirm xorg-xrandr
sudo pacman -S --noconfirm xorg-xset
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm feh
sudo pacman -S --noconfirm firefox

# Installing Yay AUR manager
if ! command -v COMMAND &> /dev/null
then
    cd ~
    rm -rf yay
    git clone https://aur.archlinux.org/yay.git
    cd yay 
    makepkg -si --noconfirm
    cd ..
fi


# Installing AUR packages
yay -S --noconfirm polybar
yay -S --noconfirm picom-git

# AutoLogin 
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
sudo rm -f /etc/systemd/system/getty@tty1.service.d/override.conf
sudo ln -s ~/.dotfiles/autologin/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf

