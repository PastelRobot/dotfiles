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
sudo pacman -S xf86-video-amdgpu base-devel wayland xorg-server-xwayland xdg-utils nitrogen picom alacritty nano firefox mesa lib32-mesa
#bulk install
sudo pacman -S sway python python-pip polkit waybar bemenu awesome-terminal-fonts powerline-fonts adobe-source-code-pro-fonts
sudo pacman -S xfce4-power-manager wine-staging avahi nm-connection-editor pavucontrol
sudo pacman -S notepadqq linux-headers lutris dunst discord nemo ttf-font pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack
sudo pacman -S pavucontrol lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings light-locker reflector
sudo pacman -S lxappearance ncurses steam breeze-gtk breeze-icons python-i3ipc libreoffice-fresh vlc
sudo pacman -S nemo-fileroller nemo-image-converter nemo-preview libu2f-host grim slurp
#install snapd
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
cd
#install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd
#less essential essentials.
yay -S octopi steam-fonts wqy-zenhei splatmoji-git easystroke-git xfce-polkit-git pa-applet-git qt5ct i3exit clipit
sudo pip install i3-workspace-swap
#enable services
sudo systemctl enable lightdm
sudo systemctl enable reflector
sudo systemctl enable snapd.socket
