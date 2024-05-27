#!/bin/sh

#Basic packages
sudo pacman -S git neofetch htop vim networkmanager otf-aurulent-nerd firefox qtile polybar rofi tlp

git clone https://github.com/maxlttr/wm.git

#Polybar
mkdir ~/.config/polybar/
cp -i ~/Downloads/wm/config.ini ~/.config/polybar/config.ini

#Qtile
cp -i ~/Downloads/wm/config.py ~/.config/qtile/config.py
chmod +x ~/Downloads/wm/autostart.sh
cp -i ~/Downloads/wm/autostart.sh ~/.config/qtile/autostart.sh

#Wallpaper
cp -i ~/Downloads/wm/image.jpg ~/.config/qtile/image.jpg

#Clean useless file and folder
rm -r ~/Downloads/wm/ && rm installer.sh

reboot
