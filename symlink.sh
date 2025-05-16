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
ln -sf $(pwd)/aerospace/aerospace.toml $HOME/.aerospace.toml
ln -sf $(pwd)/ghostty/config $HOME/.config/ghostty/config
