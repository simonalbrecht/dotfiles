# Enable aliases to be sudo’ed
alias sudo="sudo "

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Shortcuts
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
# Find flag to colorize ls
if ls --color > /dev/null 2>&1; then # GNU
	colorflag="--color"
else # macOS
	colorflag="-G"
fi

alias ls="command ls ${colorflag}"
alias ll='ls -la'
alias lh='ls -lah'
alias la='ls -lAFh'

# Safe copy, move, delete
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Checksums
command -v md5sum > /dev/null || alias md5sum='md5' # md5 checksums
command -v sha1sum > /dev/null || alias sha1sum='shasum' # sha1 checksums

# Bat: https://github.com/sharkdp/bat
command -v bat >/dev/null 2>&1 && alias cat="bat --style=numbers,changes"

# Pretty print json
alias json='python -m json.tool'

# Networking
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias local-ip='ipconfig getifaddr en0'

# Folders
alias desk='cd ~/Desktop'
alias proj='cd ~/Projects'
alias docs='cd ~/Documents'
alias dot='cd ~/.dotfiles'
