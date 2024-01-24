# dotfiles

## Installation
### macOS
1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `eval "$(/opt/homebrew/bin/brew shellenv)"`
2. `brew install chezmoi`
3. `chezmoi init --apply https://github.com/simonalbrecht/dotfiles.git`
3. `chsh -s /bin/zsh`