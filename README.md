# Dotfiles and Scripts

## Description
Just like the repo name states, this is where I store my dotfiles and custom scripts
for my Arch Linux/Gentoo + i3 layout. My lockscreen takes a screenshot, blurs it
then overlays it with a random symbol.

### Software Used
- ***i3-wm, polybar, i3lock*** - My tiling window manager, status bar and lockscreen utility
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
I only store them in my repository for easier access.

## Getting Started
Btw I use Arch, but I've been using this dotfile repository on my Gentoo build, and
it's working for me how I like it so far. You may or may not find these in your
package manager if you use another distro.
### Arch Linux
Run as root:
```
pacman -S i3-wm polybar i3lock picom feh imagemagick scrot maim alacritty ttf-font-awesome xautolock xss-lock
```
### Gentoo
Run as root:
```
emerge --ask x11-wm/i3 x11-misc/polybar x11-misc/i3lock x11-misc/picom media-gfx/feh media-gfx/imagemagick media-gfx/scrot media-gfx/maim x11-terms/alacritty media-fonts/fontawesome x11-misc/xautolock x11-misc/xss-lock media-video/pipewire
```

### Install the Dotfiles
Clone this repo
```
git clone git@github.com:jerryarciaga/Dotfiles-and-Scripts $HOME/.dotfiles
cd .dotfiles
```
Copy config files into your config file directories:
```
cp -r ./Configs/i3 ~/.config/i3
cp -r ./Configs/alacritty ~/.config/alacritty
cp -r ./Configs/picom ~/.config/picom
cp ./Configs/polybar/config.ini ~/.config/polybar/config.ini 
cp -r ./Wallpaper ~/.wallpaper
```

Alternatively, you can make use of soft links for easier maintenance.
```
ln -sf $HOME/.dotfiles/Configs/i3 $HOME/.config
ln -sf $HOME/.dotfiles/Configs/alacritty $HOME/.config
ln -sf $HOME/.dotfiles/Configs/picom $HOME/.config
ln -sf $HOME/.dotfiles/Configs/polybar $HOME/.config
ln -sf $HOME/.dotfiles/Wallpaper $HOME/.wallpaper
```

Don't forget to add these lines to your .profile or your preferred startup file.
You can also put your favorite wallpapers in .dotfiles/Wallpaper
```
feh --bg-fill ~/.wallpaper/(Your wallpaper)
picom -b
```

## Screenshots
![Blank Screenshot (Idle)](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/blank.png?raw=true)
![Neofetch and Htop](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/stats.png?raw=true)
![Git Workflow](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/git_commit.png?raw=true)
![Kernel Building Workflow](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/kernel_build.png?raw=true)
![Lofi from the terminal](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/lofi.png?raw=true)

## Lockscreens
![Hydro Overlay](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/lockscreen.png?raw=true)
![Geo Overlay](https://github.com/jerryarciaga/Dotfiles-and-Scripts/blob/main/Screenshots/lockscreen2.png?raw=true)
