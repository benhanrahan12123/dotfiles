
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="custom-agnoster"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    node
    npm
    docker
    docker-compose
)

source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"



# ------------------
# Navigation
# ------------------

eval "$(zoxide init zsh)"

# yazi stays in cwd upon exit, pass 'y' to the shell not 'yazi'
function y() {
local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# ------------------
# Tooling
# ------------------

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/home/ben1/.bun/_bun" ] && source "/home/ben1/.bun/_bun"

# ------------------
# Editor
# ------------------
export EDITOR="nvim"
export VISUAL="nvim"

# ------------------
# Aliases
# ------------------
alias cp='cp -v'
alias mv='mv -v'






# ------------------
# old/broken
# ------------------


# fzf + yay interactive install
#alias yayf="yay -Slq \
#  | fzf --multi --preview 'yay -Sii {1}' \
#         --preview-window=down:75% \
#  | xargs -ro yay -S"
