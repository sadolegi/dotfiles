if status is-interactive
    # Gruvbox theme
    and not set -q __GRUVBOX_APPLIED
    set __GRUVBOX_APPLIED 1
    theme_gruvbox dark hard

    # Fastfetch
    fastfetch

    # -------------------------
    # GENERAL ALIASES / FUNCTIONS
    # -------------------------
    alias ll='ls -lh'
    alias la='ls -lha'
    alias l='ls -CF'
    alias c='clear'

    # -------------------------
    # GIT SHORTCUTS
    # -------------------------
    alias gs='git status'
    alias ga='git add'
    alias gc='git commit'
    alias gp='git push'
    alias gl='git pull'
    alias gb='git branch'
    alias gco='git checkout'
    alias gm='git merge'
    alias gi='git init'
    alias gcl='git clone'
    alias ggc='git gc'
    alias gll='git log --oneline --graph --decorate --all'

    alias activate 'source ~/.config/fish/functions/activate.fish'
    # -------------------------
    # TMUX SHORTCUTS
    # -------------------------
    function ta
        if tmux ls 2>/dev/null | grep -q "$argv"
            tmux attach -t $argv
        else
            tmux new -s $argv
        end
    end

    function tn
        tmux new -s $argv
    end

    function tl
        tmux ls
    end

    function tk
        tmux kill-session -t $argv
    end

    function vh
        tmux split-window -h
    end

    function vv
        tmux split-window -v
    end

    alias tr='tmux source-file ~/.tmux.conf && tmux display-message "Reloaded tmux config!"'
end
