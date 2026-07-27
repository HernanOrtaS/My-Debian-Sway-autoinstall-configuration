#!/bin/bash

pkill swaync
swaync -c ~/.config/sway/swaync/config.jsonc -s ~/.config/sway/swaync/styles.css
