# Deploying dotfiles
Use [stow](https://www.gnu.org/software/stow/) to create symlinks for configuration files:
```
stow i3
stow neovim
...
```

By default symlinks are created in the parent directory of the dotfiles directory. Clone the repo under $HOME/dotfiles, otherwise you will have to specify the target directory when running stow:
```
stow -t $HOME i3
```

# Oh my zsh
zsh set up based on [oh my zsh](https://ohmyz.sh/).

First clone the oh my zsh repo to $HOME/.oh-my-zsh:
```
git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh
```

then stow the config files:
```
stow oh-my-zsh
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
