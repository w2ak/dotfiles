set relativenumber
set number

function! ToggleNumbers()
    if(&relativenumber==1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <Leader>n :call ToggleNumbers()<cr>

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

:au FocusLost * :set norelativenumber
:au FocusGained * :set relativenumber
