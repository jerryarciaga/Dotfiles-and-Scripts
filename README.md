# Dotfiles-and-Scripts

## Description
Just like the repo name states, this is where I store my dotfiles and custom scripts
for my Arch Linux + i3 layout. Since I like Genshin Impact, I figured I'd use it as
a theme for my work. My lockscreen takes a screenshot, blurs it then overlays it
with a random character splash art to simulate the gacha aspect of the game.

### Software Used
- ***i3-wm, polybar, i3lock*** - My rice field
- ***picom*** - Effects such as transparency/opacity and window transition
- ***feh*** - Wallpaper setter
- ***xautolock, xss-lock*** - Screen locker
- ***imagemagick, scrot*** - Tools to setup my lockscreen
- ***alacritty*** - My default (favorite) terminal
- ***ttf-font-awesome*** - Font Awesome icons for my statusbar

### Images Used
- [Mondstadt](https://www.reddit.com/r/Genshin_Impact/comments/okqdv9/moon_over_monstadt/)
- [Elemental Icon (Dark Minimalist)](https://www.reddit.com/r/Genshin_Impact/comments/jbextw/i_made_2_wallpapers_of_the_genshin_elements/)
- [Element Logos](https://genshin-impact.fandom.com/wiki/Genshin_Impact_Wiki)
to use as lockscreen overlays. I used ImageMagick to resize images to fit my screen well.

### Disclaimer
The wallpapers, overlay art and other images that I use are not in any way my property.
I only store them in my repo for easier access.

## Getting Started
Btw I use Arch. If you use another distro, you may or may not find these in your
package manager.
```
# pacman -S i3-wm polybar i3lock picom feh imagemagick scrot alacritty ttf-font-awesome xautolock xss-lock
```
Clone this repo
```
$ git clone git@github.com:jerryarciaga/Dotfiles-and-Scripts
$ cd Dotfiles-and-Scripts
```
Copy config files into your config file directories:
```
$ cp -r Configs/i3 ~/.config/i3
$ cp Configs/polybar/config.ini ~/.config/polybar/config.ini # If you want to display both connections
$ cp -r Configs/picom ~/.config/picom
```

Don't forget to add these lines to your .profile (or your preferred startup file)
```
feh --bg-fill ~/.wallpaper/(Your wallpaper)
picom -b
```

For wallpapers and lockscreens:
```
$ cp -r Wallpaper ~/.wallpaper
```

Alternatively, you can also set up soft links so you don't have to copy and paste
everytime I make an update (if you like living dangerously).
