export ZSH=~/.zsh

# Antibody
# curl -sL git.io/antibody | sh -s
source <(antibody init)
antibody bundle < $ZSH/plugins.txt

# Load all of the config files in ~/.zsh that end in .zsh
for config ($ZSH/*.zsh) source $config

# Load local configuration
if [ -s ~/.local.zsh ]; then
    source ~/.local.zsh
fi

# Load and run compinit
autoload -U compinit
compinit -i

PATH=/usr/local/bin:/usr/local/sbin:$PATH

eval "$(pyenv init -)"