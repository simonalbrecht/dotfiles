# dotfiles

## How to install
1. `pip install dotfiles`
2. Clone the repository to `~/.dotfiles`
3. `dotfiles --sync`
4. `chsh -s /bin/zsh`

## Configure iTerm
1. Install [Fira Code](https://github.com/tonsky/FiraCode) font
2. Use Molokai profile
3. Select Fira Code 13pt Regular as iTerm font
4. Turn on "Enable Ligatures"

## Install Homebrew dependencies
1. Install [Homebrew](https://brew.sh/)
2. `cd ~/.dotfiles`
3. `brew bundle`


## Override global configurations (machine specific)
1. Create `~/.local.zsh`
2. `chmod +x ~/.local.zsh`
3. Do the overrides there (will be loaded after global config)
