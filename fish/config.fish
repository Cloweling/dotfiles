# config
set -U fish_greeting
fish_config theme choose 'Base16 Eighties'

function fish_exit
    zellij quit
end

function fish_title
    echo "Terminal"
end

# export
source "$HOME/.config/fish/conf.d/global.fish"
source "$HOME/.config/fish/conf.d/export.fish"

# Function
source "$HOME/.config/fish/functions/helper.fish"
source "$HOME/.config/fish/functions/jenv.fish"

# alias
source "$HOME/.config/fish/functions/alias/general.fish"
source "$HOME/.config/fish/functions/alias/directory.fish"
source "$HOME/.config/fish/functions/alias/git.fish"

# Completions
source "$HOME/.config/fish/completions/vsc.fish"
source "$HOME/.config/fish/completions/zellij.fish"

# Path
[ -s "$HOME/.alias.local" ] && source "$HOME/.alias.local"
[ -s "$HOME/.fish.local" ] && source "$HOME/.fish.local"
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"


# Load
if type -q fnm
    fnm env --use-on-cd | source
end

if type -q starship
    starship init fish | source
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    # eval (zellij setup --generate-auto-start fish | string collect)
end

source (jenv init - | string replace 'hash' 'command -v' | psub)