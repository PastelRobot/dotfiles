#!/bin/bash
i3-msg exit
sleep 1

~/.config/custom/love-lain.sh

sleep 5
systemctl poweroff -i