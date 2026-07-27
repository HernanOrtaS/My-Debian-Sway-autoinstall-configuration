#!/bin/bash

mkdir -p ~/.config/sway/
cp ./foot ~/.config/sway/
cp ./fuzzel ~/.config/sway/
cp ./swaync ~/.config/sway/
cp ./waybar ~/.config/sway/
cp ./config ~/.config/sway/

sudo apt install -y sway swaylock swayidle
sudo apt install -y sway-notification-center waybar fastfetch lightdm geany
sudo apt install -y psmisc fuzzel zip unzip libnotify-bin wget
sudo apt install -y thunar thunar-archive-plugin thunar-data thunar-gtkhash
sudo apt install -y thunar-volman thunar-vcs-plugin gvfs gvfs-backends 
sudo apt install -y udisks2 policykit-1-doc

sudo apt install network-manager network-manager-gnome blueman

mkdir -p ~/.config/sway/wallpaper/

sudo mv /usr/share/desktop-base/emerald-theme/lockscreen/contents/images/1920x1080.svg ~/.config/sway/wallpaper/

sudo apt install -y flatpak
flatpak install flathub com.brave.Browser

TMP_FONTS=$(mktemp -d)
INSTALL_FONTS="/usr/local/share/fonts/fontawesome"
sudo mkdir -p "$INSTALL_FONTS"

wget -O "$TMP_FONTS/fontawesome-desktop.zip" \
    https://github.com/FortAwesome/Font-Awesome/releases/latest/download/fontawesome-free-desktop.zip
    
unzip -q "$TMP_FONTS/fontawesome-desktop.zip" -d "$TMP_FONTS"
sudo cp "$TMP_DIR"/fontawesome-free-*/otfs/*.otf "$INSTALL_DIR"/


sudo apt install -y fonts-dejavu fonts-liberation2 fonts-noto-core fonts-noto-color-emoji
sudo apt install -y papirus-icon-theme 

sudo apt install -y xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr

sudo apt install -y build-essential dkms linux-headers-$(uname -r)

echo "Completado"
