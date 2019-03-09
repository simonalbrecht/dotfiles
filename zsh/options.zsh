setopt auto_cd                # automatically jump into directory if not command

setopt inc_append_history     # update History in all windows on command execution
setopt extended_history       # add timestamps
setopt hist_no_store          # don't store history related functions
setopt hist_reduce_blanks     # remove superfluous blanks
setopt hist_ignore_dups       # ignore duplicates
setopt hist_find_no_dups      # don't find duplicates

setopt extended_glob          # use extended globbing (#, ~, ^)

# https://github.com/robbyrussell/oh-my-zsh/issues/31
#  If set, this option causes globs which do not match a file to result in an error without running the command. If unset, the command is run with the un-expanded glob. I do a lot of math at the command line and have gotten used to doing things like “5*7” without quoting. Just what I'm used to, but nice that I can customize it.
unsetopt nomatch