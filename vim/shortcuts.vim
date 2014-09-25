noremap <space> <Nop>
let mapleader = " "

noremap <leader>a :Ack

noremap <leader><space> :noh<cr>

noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

noremap <leader>s <C-w>s
noremap <leader>v <C-w>v

noremap <leader>[ :tabp<cr>
noremap <leader>] :tabn<cr>

noremap <leader>n :tabnew<cr>

noremap <leader>t :CtrlP<cr>

map <leader>rc :call RunCurrentSpecFile()<cr>
map <leader>rn :call RunNearestSpec()<cr>
map <leader>rl :call RunLastSpec()<cr>
map <leader>ra :call RunAllSpecs()<cr>
