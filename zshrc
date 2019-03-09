export ZSH=~/.zsh

# Antibody
# curl -sL git.io/antibody | sh -s
source <(antibody init)
antibody bundle < $ZSH/plugins.txt

# Load all of the config files in ~/.zsh that end in .zsh
for config ($ZSH/*.zsh) source $config

# Load and run compinit
autoload -U compinit
compinit -i

PATH=/usr/local/bin:/usr/local/sbin:$PATH