test -d /opt/chef && export PATH=/opt/chef/bin:$PATH


[[ -f "$HOME/.zshenv.local" ]] && source $HOME/.zshenv.local

export GOPATH="$HOME/.gopkg"
export PATH="$GOPATH/bin:$PATH"

