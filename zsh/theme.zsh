# https://github.com/Powerlevel9k/powerlevel9k
antibody bundle bhilburn/powerlevel9k

DEFAULT_USER="simon"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

# https://github.com/denysdovhan/spaceship-prompt
# antibody bundle https://github.com/denysdovhan/spaceship-prompt

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  battery       # Battery level and status
)

# SPACESHIP_PROMPT_ORDER=(
#   time          # Time stamps section
#   user          # Username section
#   host          # Hostname section
#   dir           # Current directory section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   package       # Package version
#   node          # Node.js section
#   ruby          # Ruby section
#   elixir        # Elixir section
#   xcode         # Xcode section
#   swift         # Swift section
#   golang        # Go section
#   php           # PHP section
#   rust          # Rust section
#   haskell       # Haskell Stack section
#   julia         # Julia section
#   docker        # Docker section
#   aws           # Amazon Web Services section
#   venv          # virtualenv section
#   conda         # conda virtualenv section
#   pyenv         # Pyenv section
#   dotnet        # .NET section
#   ember         # Ember.js section
#   kubecontext   # Kubectl context section
#   terraform     # Terraform workspace section
#   exec_time     # Execution time
#   line_sep      # Line break
#   battery       # Battery level and status
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )

# SPACESHIP_USER_SUFFIX=""
# SPACESHIP_HOST_PREFIX="@"
# SPACESHIP_HOST_SUFFIX=": "
# SPACESHIP_DIR_PREFIX=''

# SPACESHIP_DIR_TRUNC=3
# SPACESHIP_DIR_TRUNC_REPO="false"

# SPACESHIP_EXEC_TIME_SHOW="false"


