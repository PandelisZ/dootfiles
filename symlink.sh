#!/bin/bash
# Check if the .config directory exists, and if not, create it.
if [ ! -d "$HOME/.config" ]; then
  mkdir -p $HOME/.config
fi

# Check if the .ghostty directory exists, and if not, create it.
if [ ! -d "$HOME/.config/ghostty" ]; then
  mkdir -p $HOME/.config/ghostty
fi

ln -sf $(pwd)/wezterm/init.lua $HOME/.wezterm.lua
ln -sf $(pwd)/ghostty/config $HOME/.config/ghostty/config
ln -sf $(pwd)/nvim $HOME/.config/nvim
ln -sf $(pwd)/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $(pwd)/gitconfig/dotgitconfig $HOME/.gitconfig
# check if on linux and if so symlink the hypr config
if [ "$(uname)" == "Linux" ]; then
  ln -sf $(pwd)/hypr $HOME/.config/hypr
fi

if [ "$(uname)" == "Darwin" ]; then
  ln -sf $(pwd)/aerospace/aerospace.toml $HOME/.aerospace.toml
fi
