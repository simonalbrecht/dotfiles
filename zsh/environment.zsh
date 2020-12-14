# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default username
export LOGNAME='simon'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vi'
else
	export EDITOR='vim'
fi

export VISUAL='vim'

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

export PAGER='less'
export MANPAGER='less -X';
export TERM="xterm-256color"

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history;
export NODE_REPL_HISTORY_SIZE='32768';

# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy';

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# Node version manager
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=`tty`

export PYENV_VIRTUALENV_DISABLE_PROMPT=1