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
sudo pacman -S xf86-video-amdgpu base-devel xorg xorg-xinit xdg-utils nitrogen picom alacritty tilda nano firefox mesa lib32-mesa linux-zen linux-zen-headers
#bulk install
sudo pacman -S i3 python python-pip polkit i3status-rust rofi awesome-terminal-fonts powerline-fonts adobe-source-code-pro-fonts
sudo pacman -S xfce4-power-manager wine-staging avahi nm-connection-editor network-manager-applet ffmpegthumbnailer libgsf libopenraw tumbler ristretto
sudo pacman -S notepadqq lutris dunst nemo ttf-font pipewire pipewire-alsa pipewire-pulse pipewire-jack
sudo pacman -S pavucontrol lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings reflector flatpack
sudo pacman -S lxappearance ncurses lxrandr-gtk3 steam breeze-gtk breeze-icons python-i3ipc libreoffice-fresh vlc
sudo pacman -S nemo-fileroller nemo-image-converter nemo-preview libu2f-host noto-fonts-emoji gnu-free-fonts ttf-arphic-uming ttf-indic-otf
#install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd
#less essential essentials.
yay -S octopi steam-fonts wqy-zenhei i3-scrot splatmoji-git xfce-polkit-git qt5ct i3exit network-manager-applet clipit breeze-obsidian-cursor-theme
yay -S autotiling
sudo pip install i3-workspace-swap
#enable services
sudo systemctl enable lightdm
sudo systemctl enable reflector
