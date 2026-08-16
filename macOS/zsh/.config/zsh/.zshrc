# =========================================================
# History
# =========================================================

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY        # new sessions append to history file instead of overwriting it
setopt SHARE_HISTORY         # all open shells share the same history in real time
setopt HIST_IGNORE_DUPS      # don't record a command if it's the same as the previous one
setopt HIST_IGNORE_SPACE     # commands prefixed with a space are not saved to history
setopt HIST_EXPIRE_DUPS_FIRST  # when history is full, drop duplicates before unique entries
setopt HIST_FIND_NO_DUPS     # skip duplicates when searching history with Ctrl+R

# =========================================================
# Shell behaviour
# =========================================================

setopt AUTOCD          # type a directory name to cd into it without typing cd
setopt NOBEEP          # never ring the terminal bell
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1


# =========================================================
# Navigation
# =========================================================

# Initialize zoxide
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


# =========================================================
# Completion
# =========================================================

# Load completion system
autoload -Uz compinit

# Initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# Enable interactive completion menu selection
zstyle ':completion:*' menu select

# Make completion case-insensitive
# Example: "doc" can complete to "Documents"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # lowercase input matches upper and lower


# =========================================================
# Fuzzy finder
# =========================================================

# Arch
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi


# =========================================================
# Modular Config Files
# =========================================================

# fzf configuration
source "$ZDOTDIR/fzf.zsh"

# Aliases
source "$ZDOTDIR/aliases.zsh"

# Custom keybindings
source "$ZDOTDIR/bindings.zsh"

# Plugins and plugin manager
source "$ZDOTDIR/plugins.zsh"

# Prompt/theme
source "$ZDOTDIR/prompt.zsh"


# ------------------
# Tooling
# ------------------

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/home/ben1/.bun/_bun" ] && source "/home/ben1/.bun/_bun"




