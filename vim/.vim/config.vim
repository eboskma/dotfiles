syntax on

set autoindent
set backupcopy=yes
set backupdir=~/.vim/tmp/
set backspace=indent,eol,start
set gdefault
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noerrorbells
set nohidden
set noshowcmd
set noswapfile
set nowrap
set number
set ruler
set showmatch
set smartindent
set smarttab
set splitbelow
set splitright
set undolevels=500
set wildmenu
set cursorline
set relativenumber
set encoding=utf-8
set colorcolumn=120

set expandtab
set tabstop=2
set shiftwidth=2

filetype indent on
filetype plugin on

if exists("+undofile")
	if isdirectory($HOME . '.vim/undo') == 0
		:silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
	endif
	set undofile
	set undodir=~/.vim/undo/
endif

if exists("+clipboard")
	set clipboard=unnamed
endif
