# fnm
fish_add_path -p $HOME/.local/share/fnm

# Load bin
fish_add_path -p $HOME/.local/bin $HOME/.cargo/bin $HOME/.npm-global/bin

# Load jenv
fish_add_path -p $HOME/.jenv/bin

# Editor/Browser
set -xg VISUAL /usr/bin/nvim
set -xg EDITOR /usr/bin/nvim
set -xg BROWSER /usr/bin/google-chrome-stable

# XDG Base directory
set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_CACHE_HOME $HOME/.cache

# Load file colors
set -xg LS_COLORS $(vivid generate snazzy)
