#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Aliases
alias sudo="doas"
alias sink="pw-loopback -m '[ FL FR]' --capture-props='media.class=Audio/Sink node.name=my-sink'"
alias neofetch="macchina"
alias clean="doas pacman -Rs $(pacman -Qqtd)"

#Starship
eval "$(starship init bash)"
source /usr/share/blesh/ble.sh
