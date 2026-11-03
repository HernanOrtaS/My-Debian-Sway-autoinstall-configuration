#!/bin/bash

options=" Lock
 Suspend
 Hibernate
 Reboot
 Shutdown"

selected=$(echo -e "$options" | fuzzel \
    --config ~/.config/sway/fuzzel/fuzzelpower.ini \
    --dmenu \
    --index)

case "$selected" in
    0)
        swaylock -f --config ~/.config/sway/swaylock/config.conf
        ;;
    1)
        swaylock -f --config ~/.config/sway/swaylock/config.conf && systemctl suspend
        ;;
    2)
        swaylock -f --config ~/.config/sway/swaylock/config.conf && systemctl hibernate
        ;;
    3)
        systemctl reboot
        ;;
    5)
        systemctl poweroff
        ;;
esac