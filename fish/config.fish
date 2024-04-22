# config
set -U fish_greeting

function fish_exit
    zellij quit
end

# export
source "$HOME/.config/fish/conf.d/export.fish"

# Function
source "$HOME/.config/fish/functions/helper.fish"

# alias
source "$HOME/.config/fish/functions/alias/general.fish"
source "$HOME/.config/fish/functions/alias/directory.fish"

# Path
[ -s "$HOME/.alias.local" ] && source "$HOME/.alias.local"
[ -s "$HOME/.fish.local" ] && source "$HOME/.fish.local"
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"
[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ] && fish_add_path (find $HOME/.sdkman/candidates/*/current/bin -maxdepth 0)

# Load
if type -q fnm
    fnm env --use-on-cd | source
end

if type -q starship
    starship init fish | source
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
end


