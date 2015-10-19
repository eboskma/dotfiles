test -d /opt/chef && export PATH=/opt/chef/bin:$PATH


[[ -f "$HOME/.zshenv.local" ]] && source $HOME/.zshenv.local
which direnv &> /dev/null && eval "$(direnv hook zsh)"

export GOPATH="$HOME/.gopkg"
export PATH="$GOPATH/bin:$PATH"

