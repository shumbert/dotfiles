# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Shell options
setopt extendedglob
setopt globdots

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Aliases
if [[ "$OSTYPE" =~ "openbsd" ]]; then
    alias ls='colorls -G'
fi
alias ll='ls -lsa'
alias lr='ls -ltr'

# Load zsh-syntax-highlighting; should be last.
source "$HOME/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
