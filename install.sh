#!/bin/bash

PLATFORM=`uname -s`

function install_links() {
  
}

function install_generic() {
  echo "Generic installation"
  dirname=`realpath $0`
  
  install_links
  # Install and load Vim plugins
  if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]
  then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
  fi
}

function install_osx() {
  echo "OS X specific installation"
  
  # Homebrew
  if [ ! -x "/usr/local/bin/brew" ]
  then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  else
    echo "Homebrew already installed."
  fi
  
  # brew bundle $PWD/Brewfile
}

function install_linux() {
  echo "Linux (Ubuntu/Debian) specific installation"

  if [ ! -x "/usr/bin/curl" ]
  then
    sudo apt-get -y install curl coreutils realpath
  fi
  
  # debname="rcm_1.2.3-1_all.deb"
  #
  # curl -Lo /tmp/${debname} https://thoughtbot.github.io/rcm/debs/${debname}
  # sudo dpkg -i /tmp/${debname}
  #  rm /tmp/${debname}
}

case $PLATFORM in
  Linux)
  install_linux
  ;;
  Darwin)
  install_osx
  ;;
esac

install_generic