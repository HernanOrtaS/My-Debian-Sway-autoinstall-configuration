#!/bin/bash

mkdir -p ~/.config/sway/
cp -r ./foot ~/.config/sway/
cp -r ./fuzzel ~/.config/sway/
cp -r ./swaync ~/.config/sway/
cp -r ./waybar ~/.config/sway/
cp -r ./config ~/.config/sway/

mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Pictures/Screenshots ~/Videos

sudo apt install -y sway swaylock swayidle autotiling pavucontrol brightnessctl
sudo apt install -y sway-notification-center waybar fastfetch lightdm geany
sudo apt install -y psmisc grim fuzzel zip unzip libnotify-bin wget
sudo apt install -y thunar thunar-archive-plugin thunar-data thunar-gtkhash
sudo apt install -y thunar-volman thunar-vcs-plugin gvfs gvfs-backends vlc
sudo apt install -y udisks2 policykit-1-doc ufw

sudo apt install -y network-manager network-manager-gnome blueman

sudo mv /etc/network/interfaces /etc/network/interfaces2

mkdir -p ~/.config/sway/wallpaper/

sudo mv /usr/share/desktop-base/emerald-theme/lockscreen/contents/images/1920x1080.svg ~/.config/sway/wallpaper/

sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y flathub com.brave.Browser
sudo flatpak install -y flathub org.onlyoffice.desktopeditors

TMP_FONTS=$(mktemp -d)
INSTALL_FONTS="/usr/local/share/fonts/"
sudo mkdir -p "$INSTALL_FONTS"

sudo wget -O "$TMP_FONTS/fontawesome.zip" https://github.com/FortAwesome/Font-Awesome/releases/download/7.3.1/fontawesome-free-7.3.1-desktop.zip

unzip -q "$TMP_FONTS/fontawesome.zip" -d "$TMP_FONTS/fontawesome"
sudo cp -r "$TMP_FONTS/fontawesome/fontawesome-free-7.3.1-desktop/otfs/" "$INSTALL_FONTS/awesomefonts"


sudo apt install -y fonts-dejavu fonts-liberation2 fonts-noto-core fonts-noto-color-emoji
sudo apt install -y papirus-icon-theme 

sudo apt install -y xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr

sudo apt install -y build-essential dkms linux-headers-$(uname -r)

echo "Completado"
