export PATH=$HOME/bin:/usr/local/bin:$PATH
export WORKON_HOME=$HOME/.virtualenvs
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="maran"
ZSH_CUSTOM=$HOME/.zsh_custom

CASE_SENSITIVE="true"
DISABLE_VENV_CD=1
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  colored-man-pages
  copybuffer
  docker-compose
  docker
  git
  history-substring-search
  pip
  virtualenvwrapper
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
