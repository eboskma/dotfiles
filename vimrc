set nocompatible
filetype off

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/erwin/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/erwin/.cache/dein')
  call dein#begin('/home/erwin/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/erwin/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim')
  
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })


  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-clang')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('tpope/vim-fugitive')
  call dein#add('gregsexton/gitv')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('kien/ctrlp.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-airline/vim-airline')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-dispatch')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Required
source $HOME/.vim/colors.vim
source $HOME/.vim/config.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/shortcuts.vim
source $HOME/.vim/statusline.vim
" source $HOME/.vim/tabs.vim
source $HOME/.vim/autocommands.vim

filetype plugin indent on
