if [ -d "$HOME/.rbenv" ]
then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

[[ -f "$HOME/.zshenv.local" ]] && source $HOME/.zshenv.local
which direnv && eval "$(direnv hook zsh)"

export GOPATH="$HOME/.gopkg"
export PATH="$GOPATH/bin:$PATH"
