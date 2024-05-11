function ..
    cd ..
end

function dev
    xdg-open ~/Developments
end

function bootcamp
    xdg-open ~/Bootcamp
end

# function: is_valid, msg, exit_code
function __is_validate_directory
    set target $argv[1]

    if test "$target" = "." -o -d $target
        echo 1
    else
        echo 0
    end
end

function vsc
    if test (count $argv) -eq 0
        echo "Invalid argument. Missing argument."
        return 1
    end

    set found 0

    for profile in $vsc_profiles_commands_global
        if test $argv[1] = $profile
            set found 1
            break
        end
    end

    if test $found -eq 0
        echo "Invalid argument. Please provide a valid profile"
        return 1
    end

    set is_result ( __is_validate_directory $argv[2] )

    if test $is_result[1] -eq 1
        code --profile $argv[1] $argv[2]
        return 0
    else
        echo "Invalid argument. Please provide a file or '.' to open"
        return 1
    end
end

function open
    if test (count $argv) -eq 0
        xdg-open .
        return 0
    end

    set is_result ( __is_validate_directory $argv[1] )

    if test $is_result[1] -eq 1
        xdg-open $argv[1]
        return 0
    else
        echo "Invalid argument. Please provide a file or '.' to open"
        return 1
    end
end