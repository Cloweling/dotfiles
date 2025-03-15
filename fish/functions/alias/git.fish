function gbcpy
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1
        git branch --show-current | xclip -selection clipboard; notify-send "Copy Branch" "$(git branch --show-current)" -a "git" -i "emblem-system"
    else
        echo "The current directory is not a Git repository."
    end
end

function ghcpy
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1
        git rev-parse --short HEAD | xclip -selection clipboard; notify-send "Copy last Hash" "$(git rev-parse --short HEAD)" -a "git" -i "emblem-system"
    else
        echo "The current directory is not a Git repository."
    end
end