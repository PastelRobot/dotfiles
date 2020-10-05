#!/bin/bash

#This script requires you do do a few things before running.
#1:Install yay 
  #(git clone https://aur.archlinux.org/yay-git.git
  #cd yay-git
  #makepkg -si
  #cd)
#2: enable multilib
  #(sudo nano /etc/pacman.conf
  #and uncomment the multilib section)
#3:and make exacutable(obvs)
  #(sudo chmod +x installscript.sh)
  
  
#Obligitory update
sudo pacman -Syu
#Essentials
sudo pacman -S xf86-video-amdgpu xorg xorg-xinit xdg-utils nitrogen picom alacritty nano firefox base-devel mesa lib32-mesa
#Window manager and tools
sudo pacman -S i3 python python-pip
#Install moniter swap
git clone https://github.com/einzigartigerName/i3-workspace-swap.git
cd i3-workspace-swap
python setup.py install
cd
#less essential essentials.
sudo pacman -S polkit xfce4-power-manager wine-staging clipit avahi nm-connection-editor pavucontrol vlc lxappearance ncurses steam libreoffice-fresh linux-headers lutris dunst discord dolphin  ttf-liberation pulseaudio pulseaudio-alsa pulseaudio-bluetooth lightdm lightdm-gtk-greeter pulseaudio-jack pa-applet pavucontrol
yay -S argon steam-fonts wqy-zenhei i3-scrot splatmoji-git easystroke-git
