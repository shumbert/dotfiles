# Deploying dotfiles
Use [stow](https://www.gnu.org/software/stow/) to create symlinks for configuration files:
```
stow -v --no-folding i3
stow -v --no-folding neovim
...
```

By default symlinks are created in the parent directory of the dotfiles directory. Clone the repo under $HOME/dotfiles, otherwise you will have to specify the target directory when running stow:
```
stow -t $HOME --no-folding i3
```

Also by default stow folds directories: if the package contains a directory which does not exist in the target directory it creates a symlink instead of creating a directory and symlinks inside it. For instance the i3 packages contains bin/i3-exit. If $HOME/bin does not exist stow just creates a symlink $HOME/bin. But then all files under $HOME/bin end up in the stow package directory, and git will show them as untracked files. To avoid that use the --no-folding option so that stow creates the directory $HOME/bin, and then creates symlinks inside.

# Oh my zsh
zsh set up based on [oh my zsh](https://ohmyz.sh/).

First clone the oh my zsh repo to $HOME/.oh-my-zsh:
```
git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh
```

then stow the config files:
```
stow --no-folding oh-my-zsh
```

# Neovim
To download and install plugins, use the following command from neovim:
```
:PlugInstall
```

# Urxvt configuration
Urxvt configuration preferences are stored in .Xresources. To reload the config:
```
xrdb ~/.Xresources
```
