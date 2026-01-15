function activate --argument dir
    if not set --query dir[1]
        set dir (pwd)
    end

    if set --query VIRTUAL_ENV
        echo "Virtual environment already active: $VIRTUAL_ENV"
        return 0
    end

    set --local venv_path
    if test -d "$dir/.venv"
        set venv_path "$dir/.venv"
    else if test -d "$dir/venv"
        set venv_path "$dir/venv"
    else
        echo "No virtual environment found in $dir (.venv or venv)"
        return 1
    end

    if test -f "$venv_path/bin/activate.fish"
        source "$venv_path/bin/activate.fish"
        echo "Activated virtual environment: $venv_path"
    else
        echo "No activate.fish found in $venv_path/bin"
        return 1
    end
end
