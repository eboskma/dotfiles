let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeChDirMode=2
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=60
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp\|log\|bower_components'

let g:rspec_command="Dispatch rspec {spec}"

let g:airline_solarized_bg="dark"
let g:airline_theme="solarized"

let g:airline#extensions#whitespace#show_message = 0

let g:deoplete#sources#clang#libclang_path = '/usr/local/llvm-6.0/lib/libclang.so'
let g:deoplete#sources#clang#clang_header  = '/usr/local/llvm-6.0/lib/clang'
let g:deoplete#sources#clang#std#cpp = 'c++17'

let g:deoplete#omni#input_patterns = {}
set completeopt=noselect,menuone,longest
let g:deoplete#enable_at_startup = 1
"let g:deoplete#disable_auto_complete = 1
let g:deoplete#enable_smart_case = 1

