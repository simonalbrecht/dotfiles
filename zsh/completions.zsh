# Better autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' menu select # Use cursors to select completion

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)'$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)'}%%[# ]*}//,/ })'

# Support for completions for brew etc
fpath=(/usr/local/share/zsh-completions $fpath)