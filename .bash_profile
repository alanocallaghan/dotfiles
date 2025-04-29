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


# Added by `rbenv init` on Mon 27 Jan 10:49:35 GMT 2025
eval "$(~/.rbenv/bin/rbenv init - --no-rehash bash)"
