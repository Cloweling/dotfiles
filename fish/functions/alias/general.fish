function ls
    lsd $argv
end

function ll
    ls -lhF $argv
end

function la
    ls -AlhF $argv
end

function c
    clear
end

function h
    history
end

function e
    exit
end

function grep
    command grep --color=auto $argv
end

function wget
    command wget -c $argv
end

function mv
    command mv -i $argv
end

function cp
    command cp -i $argv
end

function ln
    command ln -i $argv
end

function dfll
   command df -Th --total | sort -h -r | column -t
end

function dull
   command du -h -x -- $1 | sort -r -h | head -20
end

function ip
    command ip --color=auto $argv
end

function diff
    command diff --color=auto $argv
end

function sysll
    systemctl list-unit-files
end

function syslls
    systemctl list-unit-files --type=service
end

function reload
    source ~/.config/fish/config.fish
end

function working
    set found 0

    for layout in $zellij_layout_commands_global
        if test $argv[1] = $layout
            set found 1
            break
        end
    end

    if test $found -eq 0
        echo "Invalid argument. Please provide a valid layout"
        return 1
    end

    zellij --layout $argv[1]
    # zellij --layout $argv[1] -s $argv[1]
end
