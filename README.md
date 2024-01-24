# dotfiles

## Installation
### macOS
1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `eval "$(/opt/homebrew/bin/brew shellenv)"`
2. `brew install chezmoi`
3. `chezmoi init --apply https://github.com/simonalbrecht/dotfiles.git`
3. `chsh -s /bin/zsh`

## Configuration
### Customize Shell Environment
1. Create `~/.local.zsh`
2. Add overrides and customizations. This file will be included by `.zshrc`.

### Setup different Git Identity
1. Create `~/Project/.gitconfig`

```ini
[user]
	email = <email>
	name = Simon Albrecht
	signingkey = ssh-rsa <key>

[gpg "ssh"]
	allowedSignersFile = "~/Projects/.allowed-signers"
```

2. Create `~/Projects.allowed-signers`:

```
<email> ssh-rsa <key>
```

### Setup different SSH configuration
1. Create `~/.local-ssh-config`
2. Add SSH configuration there. It will be included in the global SSH config.