.___  __ /\                             .___             __          
|   |/  |)/ ______   _____   ____     __| _/____   _____/  |_  ______
|   \   __\/  ___/  /     \_/ __ \   / __ |/  _ \ /  _ \   __\/  ___/
|   ||  |  \___ \  |  Y Y  \  ___/  / /_/ (  <_> |  <_> )  |  \___ \ 
|___||__| /____  > |__|_|  /\___  > \____ |\____/ \____/|__| /____  >
               \/        \/     \/       \/                       \/ 

# It's my doots bruv

I'ts not gonna work for you they are mine

You can look if you want




## Setup

Run `bash /path/to/dootfiles/symlink.sh` from any directory. Links use the
script's location, including when called through a symlink. Paths with spaces
are supported. Rerun after moving the checkout.

Existing configs are moved into `~/.local/state/dootfiles/backups/setup-*`
before replacement; running setup again leaves correct links alone.
`XDG_CONFIG_HOME` is respected for application configs.

Use `--skip-desktop` to keep existing Hyprland/Waybar or AeroSpace settings
on machines where you want to retain the desktop configuration.

Install Neovim and tmux first; fish is optional and used when available. Install the pinned
Neovim plugins with `nvim --headless "+Lazy! restore" +qa`.
New tmux servers load the config automatically; reload an existing server with
`tmux source-file ~/.tmux.conf`. Prefix is Ctrl-a, followed by `|` or `-`
to split panes; Alt-arrow selects panes without the prefix.

The `hypr/` directory contains the customized Omarchy Lua configuration,
including keyboard mappings, monitor settings, and appearance. It requires
Omarchy; packaged defaults continue to load from `/usr/share/omarchy`.
Backup files are kept outside the repository.
