function! CtrlP_Statusline_1(...)
  let prv = '%#ctrlp# '.a:4.' %*'
  let item = '%1* '.a:5.' %*'
  let nxt = '%#ctrlp# '.a:6.' '
  let dir = ' %=%<%*%#ctrlp# '.getcwd().' %*'
  return prv.item.nxt.dir
endfunction

let g:ctrlp_status_func = { 'main': 'CtrlP_Statusline_1', }


