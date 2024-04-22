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
    mv -i $argv
end

function cp
    cp -i $argv
end

function ln
    ln -i $argv
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