#!/bin/bash

#This script requires you do do a few things before running.
#1: enable multilib
  #(doas nano /etc/pacman.conf
  #and uncomment the multilib section)
#2:and make exacutable(obvs)
  #(doas chmod +x installscript.sh)
  
  
#Obligitory update
doas pacman -Syu
#Essentials
doas pacman -S xf86-video-amdgpu base-devel xorg xorg-xinit xdg-utils nitrogen picom kitty tilda nano firefox mesa lib32-mesa linux-zen-headers
#bulk install
doas pacman -S i3 python python-pip polkit i3status-rust rofi awesome-terminal-fonts powerline-fonts adobe-source-code-pro-fonts starship
doas pacman -S xfce4-power-manager wine-staging avahi ffmpegthumbnailer libgsf libopenraw tumbler ristretto
doas pacman -S notepadqq lutris xfce4-notifyd nemo ttf-font pipewire pipewire-alsa pipewire-pulse pipewire-jack
doas pacman -S pavucontrol reflector maim peek amd-ucode
doas pacman -S lxappearance ncurses steam breeze-gtk breeze-icons python-i3ipc libreoffice-fresh mpv unarchiver redshift
doas pacman -S nemo-fileroller nemo-image-converter nemo-preview noto-fonts-emoji gnu-free-fonts ttf-arphic-uming ttf-indic-otf
doas pacman -S libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau gvfs-mtp
#install paru
git clone https://aur.archlinux.org/paru-bin.git
cd paru
makepkg -si
cd ~
#less essential essentials.
paru -S steam-fonts wqy-zenhei splatmoji-git xfce-polkit-git qt5ct clipit blesh
paru -S autotiling volctl mailspring noisetorch-bin dracula-gtk-theme-git
doas pip install i3-workspace-swap
#enable services
doas systemctl enable reflector
systemctl --user enable psd
