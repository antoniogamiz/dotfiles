## Interesting available commands

```bash
# to see the diff between two files
diff
```

## Multiple accounts Git/GitHub

Install the github and:

```bash
git auth login # with one account
git auth login # with another account
git auth switch # to change between them
```

Add this to the `~/.ssh/config` file:

```
# GitHub personal
Host personal
HostName github.com
AddKeysToAgent yes
UseKeyChain yes
IdentityFile ~/.ssh/personal
IdentitiesOnly yes

# GitHub work
Host work
HostName github.com
AddKeysToAgent yes
UseKeyChain yes
IdentityFile ~/.ssh/id_ed25519
IdentitiesOnly yes
```

Then, when you clone a repository, make sure you modify the `origin` accordingly:

```
git remote remove origin
git remote add origin git@<personal|work>:<owner>/<repository>.git
```

## Dependencies

### Stow

This is the syslink farm to keep all the configuration files linked with the ones in the repository. [Source](https://www.youtube.com/watch?v=y6XCebnB9gs).
You can check `.stow-local-ignore`.

```bash
sudo apt-get install stow
brew install stow # macos
```

### fd

```bash
brew install fd
```

### [Pyenv](https://github.com/pyenv/pyenv)

```bash
brew install pyenv
```

### [Tmux](https://github.com/tmux/tmux/wiki/Installing)

```bash
brew install tmux
```

### Neovim

```bash
brew insatll neovim
```

### Colorls

```bash
brew install ruby
gem install colorls
```
