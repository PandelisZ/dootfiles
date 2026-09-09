#!/usr/bin/env bash
set -euo pipefail

# Resolve the script itself, including invocation through a symlink.
script=${BASH_SOURCE[0]}
while [[ -L "$script" ]]; do
  script_dir=$(cd -- "$(dirname -- "$script")" && pwd -P)
  script=$(readlink -- "$script")
  [[ "$script" = /* ]] || script="$script_dir/$script"
done
doot_dir=$(cd -- "$(dirname -- "$script")" && pwd -P)
config_dir=${XDG_CONFIG_HOME:-"$HOME/.config"}
skip_desktop=false
case "${1:-}" in
  --skip-desktop) skip_desktop=true ;;
  '') ;;
  *) echo "Usage: $0 [--skip-desktop]" >&2; exit 2 ;;
esac
[[ $# -le 1 ]] || { echo "Too many arguments" >&2; exit 2; }
backup_dir=""

link_config() {
  local source="$doot_dir/$1" target="$2" backup
  if [[ -L "$target" && "$(readlink -- "$target")" == "$source" ]]; then
    printf 'Already linked: %s\n' "$target"
    return
  fi
  mkdir -p -- "$(dirname -- "$target")"
  if [[ -e "$target" || -L "$target" ]]; then
    if [[ -z "$backup_dir" ]]; then
      mkdir -p -- "$HOME/.local/state/dootfiles/backups"
      backup_dir=$(mktemp -d "$HOME/.local/state/dootfiles/backups/setup-XXXXXXXX")
    fi
    backup="$backup_dir$target"
    mkdir -p -- "$(dirname -- "$backup")"
    mv -- "$target" "$backup"
    printf 'Backed up: %s -> %s\n' "$target" "$backup"
  fi
  ln -s -- "$source" "$target"
  printf 'Linked: %s -> %s\n' "$target" "$source"
}

link_config wezterm/init.lua "$HOME/.wezterm.lua"
link_config ghostty/config "$config_dir/ghostty/config"
link_config nvim "$config_dir/nvim"
link_config tmux/tmux.conf "$HOME/.tmux.conf"
link_config tmux/tmux.conf "$config_dir/tmux/tmux.conf"
link_config gitconfig/dotgitconfig "$HOME/.gitconfig"
link_config gitconfig/gitignore "$HOME/.gitignore"

if ! "$skip_desktop"; then
  case "$(uname -s)" in
    Linux)
      link_config hypr "$config_dir/hypr"
      link_config waybar "$config_dir/waybar"
      ;;
    Darwin) link_config aerospace/aerospace.toml "$HOME/.aerospace.toml" ;;
  esac
fi
