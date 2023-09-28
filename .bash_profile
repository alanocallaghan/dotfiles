[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

. "$HOME/.cargo/env"

# Added by Toolbox App
export PATH="$PATH:/home/alan/.local/share/JetBrains/Toolbox/scripts"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
