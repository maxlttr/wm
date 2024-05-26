Here are all my config for my window manager, I'm trying to do it as lightweight as possible.

## INSTALLATION
<div/>


<summary><h3>Dependencies</h3></summary>

- Basic packages
  
```sh
sudo pacman -S vim neofetch networkmanager nm-connection-editor htop polybar qtile firefox rofi
```

- Install any [nerd fonts](https://archlinux.org/groups/x86_64/nerd-fonts/)

```sh
sudo pacman -S otf-aurulent-nerd
```
<summary><h3>Dotfiles</h3></summary>

- Clone the configuration

```sh
cd Downloads
git clone https://github.com/maxlttr/wm.git
```
- Moving the config files
```sh
cp -f ~/Downloads/wm/.config/qtile/config.py ~/.config/qtile/config.py && cp -f ~/Downloads/wm/.config/qtile/autostart.sh && mkdir ~/.config/polybar/ && cp ~/Downloads/wm/.config/polybar/config.ini ~/.config/polybar/config.ini && mv ~/Downloads/wm/themes/image.jpg ~/Downloads/image.jpg
```
- Making files executable
```sh
chmod +x ~/.config/qtile/autostart.sh
```

<summary><h3>Battery_eco script (at startup)</h3></summary>

You must adapt the provided script to your cpu limits !!


