set nocompatible
filetype off

" Initialize Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required
Bundle 'gmarik/vundle'

" Ruby/Rails
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'thoughtbot/vim-rspec'

" Language and markup
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elixir-lang/vim-elixir'
Bundle 'jnwhiteh/vim-golang'

" Utilities
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'gregsexton/gitv'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-dispatch'
Bundle 'airblade/vim-gitgutter'

" Look-and-feel stuff
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'

source $HOME/.vim/colors.vim
source $HOME/.vim/config.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/shortcuts.vim
source $HOME/.vim/statusline.vim
source $HOME/.vim/tabs.vim
source $HOME/.vim/autocommands.vim

filetype plugin indent on
