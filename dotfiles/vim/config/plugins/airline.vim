let g:airline_theme='jellybeans'
function! Render_Only_File(...)
  let builder = a:1
  let context = a:2

  call builder.add_section('file', '%f')

  "return 0   " the default: draw the rest of the statusline
  "return -1  " do not modify the statusline
  return 1   " modify the statusline with the current contents of the builder
endfunction
call airline#add_inactive_statusline_func('Render_Only_File')

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
