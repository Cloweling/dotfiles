for profile in $vsc_profiles_commands_global
    complete -f -c vsc -n "not __fish_seen_subcommand_from $vsc_profiles_commands_global" -a $profile
end
