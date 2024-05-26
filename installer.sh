#!/bin/sh

#Basic packages
sudo pacman -S git neofetch htop vim networkmanager nm-connection-editor otf-aurulent-nerd firefox qtile polybar rofi cpupower

git clone https://github.com/maxlttr/wm.git

#Polybar
mkdir ~/.config/polybar/
mv ~/wm/config.ini ~/.config/polybar/config.ini

#Qtile
cp -f ~/wm/config.py ~/.config/qtile/config.py
rm ~/wm/config.py
mv ~/wm/autostart.sh ~/.config/qtile/autostart.sh
chmod +x autostart.sh

#Wallpaper
mv ~/wm/image.jpg ~/.config/qtile/image.jpg

#Scripts
chmod +x ~/wm/scripts/battery_eco/battery_eco.sh
mkdir ~/.config/scripts/
mv ~/wm/scripts/battery_eco/battery_eco.sh ~/.config/scripts/battery_eco.sh
mv ~/wm/scripts/battery_eco/systemd/battery_eco.service /etc/systemd/system/battery_eco.service
systemctl start battery_eco.service
systemctl enable battery_eco.service

#Delete wm folder
rm -r ~/wm/

echo 'INSTALLATION COMPLETED ! You can now reboot'
