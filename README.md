# Dotfiles-and-Scripts

## Description
Just like the repo name states, this is where I store my dotfiles and custom scipts
for my Arch Linux + i3 layout. Since I like Genshin Impact, I figured I'd use it as
a theme for my work. My lockscreen takes a screenshot, blurs it then overlays it
with a random character splash art to simulate the gacha aspect of the game.

### Software Used
- ***i3-wm, i3status, i3lock*** - My rice field
- ***picom*** - Effects such as transparency/opacity and window transition
- ***feh*** - Wallpaper setter
- ***imagemagick, scrot*** - Tools to setup my lockscreen
- ***alacritty*** - My default (favorite) terminal
- ***ttf-font-awesome*** - Font Awesome icons for my statusbar

### Images Used
- [Minimalist Mondstadt](https://www.reddit.com/r/wallpaper/comments/pda3hx/3840_x_2160_genshin_impact_minimalism_landscape/)
- [Elemental Icon (Dark Minimalist)](https://www.reddit.com/r/Genshin_Impact/comments/jbextw/i_made_2_wallpapers_of_the_genshin_elements/)
- [Character Splash Art](https://genshin-impact.fandom.com/wiki/Genshin_Impact_Wiki)
to use as lockscreen overlays. I used ImageMagick to resize images to fit my screen well.

### Disclaimer
The wallpapers, overlay art and other images that I use are not in any way my property.
I only store them in my repo for easier access.

## Getting Started
Btw I use Arch. If you use another distro, you may or may not find these in your
package manager.
```
sudo pacman -S i3-wm i3status i3lock picom feh imagemagick scrot alacritty ttf-font-awesome
```
Clone this repo
```
git clone git@github.com:jerryarciaga/Dotfiles-and-Scripts
cd Dotfiles-and-Scripts
```
Copy config files into your config file directories:
```
cp -r Configs/i3 ~/.config/i3
cp -r Configs/i3status ~/.config/i3status
cp -r Configs/picom ~/.config/picom
```

Don't forget to add these lines to your .profile (or your preferred startup file)
```
feh --bg-fill ~/.wallpaper/(Your wallpaper)
picom -b
```

For wallpapers and lockscreens:
```
mkdir ~/.wallpaper # Put your favorite wallpaper here
mkdir ~/.wallpaper/gacha # Put your lockscreen overlays here
cp Scripts/lockscreen.sh ~/.wallpaper/lockscreen.sh # i3lock with extra steps
```
