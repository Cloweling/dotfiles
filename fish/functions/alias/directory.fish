function ..
    cd ..
end

function dev
    cd ~/Developments
end

function bootcamp
    cd ~/Bootcamp
end

function vsc
    set -f path '.'

    if test -d $argv[1]
        set -f path $argv[1]
    end

    code $path
end

function open
    set -f path '.'

    if test -d $argv[1]
        set -f path $argv[1]
    end

    xdg-open $path
end