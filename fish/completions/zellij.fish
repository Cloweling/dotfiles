for layout in $zellij_layout_commands_global
    complete -f -c working -n "not __fish_seen_subcommand_from $zellij_layout_commands_global" -a $layout
end