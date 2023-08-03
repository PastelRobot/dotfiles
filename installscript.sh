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
doas pacman -S xf86-video-amdgpu base-devel wayland xorg-xwayland xdg-utils kitty nano firefox mesa lib32-mesa linux-zen-headers
#bulk install
doas pacman -S hyprland xdg-desktop-portal-hyprland python python-pip polkit awesome-terminal-fonts powerline-fonts adobe-source-code-pro-fonts starship
doas pacman -S polkit-kde-agent wine-staging avahi ffmpegthumbnailer libgsf libopenraw gtk3
doas pacman -S kate hyprpaper lutris ttf-font pipewire pipewire-alsa pipewire-pulse pipewire-jack
doas pacman -S mako amd-ucode qt5-wayland qt6-wayland wofi copyq thunar cpupower grim slurp
doas pacman -S ncurses steam libreoffice-fresh mpv swayimg unarchiver easyeffects lsp-plugins-lv2 calf
doas pacman -S tumbler gvfs thunar-archive-plugin thunar-volman noto-fonts-emoji gnu-free-fonts ttf-arphic-uming ttf-indic-otf
doas pacman -S libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau gvfs-mtp
