#!/bin/bash

swaymsg input type:keyboard xkb_switch_layout next
nohup bash ~/.config/sway/scripts/open_config/openConfig.sh & clear
