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
