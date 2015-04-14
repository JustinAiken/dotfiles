# My Dotfiles

What a nice shell customization!

### Installation (chef)

Use the [`justinaiken_dotfiles`](https://github.com/JustinAiken/justinaiken_dotfiles-cookbook) cookbook.

### Installation (manual)

- 1. Install ZSH
- 2. Set ZSH as preferred shell:

```bash
chsh -s `which zsh`
```

- 3. Install oh-my-zsh:

```bash
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

- 4. Clone this repo:

```bash
git clone git@github.com:JustinAiken/dotfiles.git
# or
git clone https://github.com/JustinAiken/dotfiles.git
```

- 5. Sync the submodules:

```bash
git submodule init
git submodule update
```

- 6. Run the sync script:

```bash
chmod +x ~/dotfiles/sync.sh && ~/dotfiles/sync.sh
```
