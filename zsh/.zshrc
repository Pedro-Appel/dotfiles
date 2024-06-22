# Set up the prompt
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=2000
HISTFILE=~/.zsh_history

# Use modern completion system
zstyle :compinstall filename '/home/rat/.zshrc'
autoload -Uz compinit
compinit

# Start Style config
eval "$(starship init zsh)"

# Setup aliases path
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
