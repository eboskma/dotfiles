# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"

# Load extra completion path
fpath=(/usr/local/share/zsh-completions $fpath)

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="false"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow brew ssh-agent bundler zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### AWS
if [ -d $HOME/AWS ]; then
	export EC2_HOME=$HOME/AWS/ec2
	export EC2_PRIVATE_KEY="$(ls $HOME/.ec2/x509-yb-keypair)"
	export EC2_CERT="$(ls $HOME/.ec2/cert-yb.pem)"
	export EC2_REGION=eu-west-1
	export EC2_URL=https://eu-west-1.ec2.amazonaws.com
	export AWS_AUTO_SCALING_HOME=$HOME/AWS/as
	export AWS_CLOUDWATCH_HOME=$HOME/AWS/cw
	export AWS_AMITOOLS_HOME=$HOME/AWS/ami
	export AWS_SNS_HOME=$HOME/AWS/sns
	export AWS_RDS_HOME=$HOME/AWS/rds
	export AWS_IAM_HOME=$HOME/AWS/iam
	export AWS_CREDENTIAL_FILE=/Users/erwin/.ec2/aws-credentials
	export AWS_AUTOSCALING_URL=https://autoscaling.eu-west-1.amazonaws.com

	#Customize to your needs...
	PATH=$AWS_IAM_HOME/bin:$AWS_RDS_HOME/bin:$AWS_SNS_HOME/bin:$EC2_HOME/bin:$AWS_AUTO_SCALING_HOME/bin:$AWS_CLOUDWATCH_HOME/bin:$AWS_AMITOOLS_HOME/bin:$PATH

  zstyle :omz:plugins:ssh-agent identities id_rsa yb gsg-keypair node-keypair
fi

PATH=/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/lib/node_modules:$HOME/bin:$HOME/.local/bin:$PATH
bindkey '\e.' insert-last-word

#Set git editor to TextMate
#export GIT_EDITOR="mate --name 'Git Commit Message' -w -l 1"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -x /usr/libexec/java_home ]; then
	### Set JAVA_HOME
	export JAVA_HOME=$(/usr/libexec/java_home)
fi

# gitignore.io integration
function gi() {
	curl -s http://www.gitignore.io/api/$@
}

# Include psql from Postgres.app
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin":$PATH

export EDITOR=vim

# Aliases
alias away='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Add GNU core utils from Homebrew to the path
which brew &> /dev/null && export PATH="$(brew --prefix coreutils)/libexec/gnubin:${PATH}"