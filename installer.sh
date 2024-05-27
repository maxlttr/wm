#!/bin/sh

#Basic packages
sudo pacman -S git neofetch htop vim networkmanager otf-aurulent-nerd firefox qtile polybar rofi tlp

git clone https://github.com/maxlttr/wm.git

#Polybar
mkdir ~/.config/polybar/
mv ~/Downloads/wm/config.ini ~/.config/polybar/config.ini

#Qtile
cp -f ~/Downloads/wm/config.py ~/.config/qtile/config.py
rm ~/Downloads/wm/config.py
mv ~/Downloads/wm/autostart.sh ~/.config/qtile/autostart.sh
chmod +x autostart.sh

#Wallpaper
mv ~/Downloads/wm/image.jpg ~/.config/qtile/image.jpg

#Delete wm folder
rm -r ~/Downloads/wm/

echo 'INSTALLATION COMPLETED ! You can now reboot'
