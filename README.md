# Dotfiles-and-Scripts

## Description
Just like the repo name states, this is where I store my dotfiles and custom scipts
for my Arch Linux + i3 layout. I use the same config files on both laptops that I have
so far.

### Software Used
- ***i3-wm, i3status, i3lock*** - The basis of my mini ricefield
- ***picom*** - Effects such as transparency/opacity and window transition
- ***feh*** - Wallpaper setter
- ***imagemagick, scrot*** - Tools to setup my lockscreen
- ***alacritty*** - My default (favorite) terminal

### Disclaimer
The wallpapers, overlay art and other images that I use are not in any way my property.
I only store them in my repo for easier access.

## Getting Started
Btw I use Arch. If you use another distro, you may or may not find these in your
package manager.
```
sudo pacman -S i3-wm i3status i3lock picom feh imagemagick scrot alacritty
```
Clone this repo
```
git clone git@github.com:jerryarciaga/Dotfiles-and-Scripts
```
Copy config files into your config file directories:
- .config/i3
- .config/i3status
- .config/picom

Don't forget to add these lines to your .profile (or your preferred startup file)
```
feh --bg-fill ~/.wallpaper/(Your wallpaper)
picom -b
```

For wallpapers and lockscreens:
```
mkdir ~/.wallpaper # Put your favorite wallpaper here
mkdir ~/.wallpaper/gacha # Put your lockscreen overlays here
cp lockscreen.sh ~/.wallpaper/lockscreen.sh # i3lock with extra steps
```
