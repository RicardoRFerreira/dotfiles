export PATH="/home/viper/.local/bin:$PATH"
export EDITOR=nvim

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/viper/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set Vi Mode
bindkey -v

# Ctrl+Right / Ctrl+Left → word movement in vi mode in Ghostty
bindkey -M viins '^[[1;5C' forward-word
bindkey -M viins '^[[1;5D' backward-word
bindkey -M vicmd '^[[1;5C' forward-word
bindkey -M vicmd '^[[1;5D' backward-word

# Ctrl+Backspace to delete word backwards in Ghostty
bindkey -M viins '\e\x7f' backward-kill-word
bindkey -M vicmd '\e\x7f' backward-kill-word

eval "$(starship init zsh)"

alias ls="eza --icons=auto"
alias tree="eza -T -L 1 --icons=auto"

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# AutoSuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Atuin
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
