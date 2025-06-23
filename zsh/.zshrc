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
