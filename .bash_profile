[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/alan/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/alan/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<


# Added by Toolbox App
export PATH="$PATH:/home/alan/.local/share/JetBrains/Toolbox/scripts"

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
