if [[ "$OSTYPE" == "linux-gnu" ]]; then
    PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
elif [[ "$OSTYPE" =~ "openbsd" ]]; then
    PATH=:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
fi

if [[ -d "$HOME/bin" ]] ; then
    PATH="$HOME/bin:$PATH"
fi
