#!/bin/bash

echo "Installing dotfiles..."

if [[ -a $HOME/.dotfiles ]]
    then
      echo "Linking config files for i3..."
      echo "Linking config files for picom..."
      echo "Linking config files for gtk..."
      echo "Linking Wallpaper files..."
      echo "Linking config files for alacritty..."
      echo "Done!"
    else
      echo "$HOME./dotfiles does not exist!"
fi
