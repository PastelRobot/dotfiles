#!/bin/bash

#This script requires you do do a few things before running.
#1: enable multilib
  #(sudo nano /etc/pacman.conf
  #and uncomment the multilib section)
#2:and make exacutable(obvs)
  #(sudo chmod +x installscript.sh)
  
  
#Obligitory update
sudo pacman -Syu
#Essentials
sudo pacman -S xf86-video-amdgpu base-devel xorg xorg-xinit xdg-utils nitrogen picom alacritty nano firefox mesa lib32-mesa
#bulk install
sudo pacman -S i3 python python-pip polkit i3status-rust dmenu awesome-terminal-fonts powerline-fonts adobe-source-code-pro-fonts
sudo pacman -S xfce4-power-manager wine-staging clipit avahi nm-connection-editor pavucontrol vlc
sudo pacman -S libreoffice-fresh linux-headers lutris dunst discord pcmanfm-gtk3 ttf-font pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack
sudo pacman -S pavucontrol lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings light-locker reflector
sudo pacman -S lxappearance ncurses steam breeze-gtk breeze-icons dolphin-plugins python-i3ipc notepadqq
#Install moniter swap
git clone https://github.com/einzigartigerName/i3-workspace-swap.git
cd i3-workspace-swap
python setup.py install
cd
#install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd
#less essential essentials.
yay -S octopi steam-fonts wqy-zenhei i3-scrot splatmoji-git easystroke-git xfce-polkit-git pa-applet-git qt5ct
#enable services
sudo systemctl enable lightdm
sudo systemctl enable reflector
