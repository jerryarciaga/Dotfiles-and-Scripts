#!/bin/bash

echo "Installing dotfiles..."

if [[ -a $HOME/.dotfiles ]]
    then
      # i3-wm
      echo -n "Linking config files for i3..."
      ln -sf $HOME/.dotfiles/Configs/i3 $HOME/.config
      echo -e "\tDONE"
      # picom
      echo -n "Linking config files for picom..."
      ln -sf $HOME/.dotfiles/Configs/picom $HOME/.config
      echo -e "\tDONE"
      # gtk
      echo -n "Linking config files for gtk..."
      ln -sf $HOME/.dotfiles/Configs/gtk-2.0 $HOME/.config
      ln -sf $HOME/.dotfiles/Configs/gtk-3.0 $HOME/.config
      echo -e "\tDONE"
      # Wallpaper
      echo -n "Linking Wallpaper files..."
      ln -sf $HOME/.dotfiles/Wallpaper $HOME/.wallpaper
      echo -e "\tDONE"
      # alacritty
      echo -n "Linking config files for alacritty..."
      ln -sf $HOME/.dotfiles/alacritty $HOME/.config
      echo -e "\tDONE"
    else
      echo "$HOME/.dotfiles does not exist!"
fi
