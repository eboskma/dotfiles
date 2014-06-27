if !has('gui_running')
  set timeoutlen=1000
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

if has('autocmd')
  if isdirectory(argv(0))
    bd
    autocmd vimenter * exe "cd" argv(0)
    autocmd VimEnter * NERDTree
  endif

  autocmd FileType text setlocal textwidth=78
  autocmd FileType gitcommit setlocal spell
  autocmd FileType markdown setlocal spell
  autocmd FileType markdown setlocal wrap

  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") | 
    \   exe "normal! g`\"" |
    \ endif
endif
