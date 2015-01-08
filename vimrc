set nocompatible
filetype off

" Initialize Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required
Plugin 'gmarik/vundle'

" Ruby/Rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'thoughtbot/vim-rspec'

" Language and markup
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jnwhiteh/vim-golang'
Plugin 'tikhomirov/vim-glsl'
Plugin 'ekalinin/Dockerfile.vim'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tcomment_vim'
Plugin 'editorconfig/editorconfig-vim'

" Look-and-feel stuff
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

source $HOME/.vim/colors.vim
source $HOME/.vim/config.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/shortcuts.vim
source $HOME/.vim/statusline.vim
source $HOME/.vim/tabs.vim
source $HOME/.vim/autocommands.vim

filetype plugin indent on
