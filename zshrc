export ZSH=~/.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antibody
# curl -sL git.io/antibody | sh -s
source <(antibody init)

# Plugins
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle romkatv/powerlevel10k

# Load all of the config files in ~/.zsh that end in .zsh
for config ($ZSH/*.zsh) source $config

# Load local configuration overrides
if [ -s ~/.local.zsh ]; then
    source ~/.local.zsh
fi

# Load and run compinit
autoload -U compinit
compinit -i

# Add Homebrew to path
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin/:$PATH

# Initialisation for tools that modify prompt
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if command -v pyenv-virtualenv-init > /dev/null; then 
 eval "$(pyenv virtualenv-init -)";
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="/Users/simon/.sdkman"
[[ -s "/Users/simon/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/simon/.sdkman/bin/sdkman-init.sh"

if command -v jenv 1> /dev/null; then
  eval "$(jenv init -)"
fi