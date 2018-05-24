let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeChDirMode=2
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=60
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp\|log\|bower_components'

let g:rspec_command="Dispatch rspec {spec}"

let g:airline_solarized_bg="dark"
let g:airline_theme="solarized"

let g:airline#extensions#whitespace#show_message = 0
