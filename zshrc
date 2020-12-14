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

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then 
 eval "$(pyenv virtualenv-init -)";
fi