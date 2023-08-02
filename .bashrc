#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Aliases
#alias sudo="doas"
alias sink="pw-loopback -m '[ FL FR]' --capture-props='media.class=Audio/Sink node.name=my-sink'"
#alias neofetch="macchina"

#Starship
eval "$(starship init bash)"
[[ $- == *i* ]] && source /usr/share/blesh/ble.sh


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
