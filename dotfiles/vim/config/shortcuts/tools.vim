function Filetype()
    echom &filetype
endfunc

function! Run()
    :w
    if (&filetype == "ruby")
        :! ruby %
    elseif (&filetype == "javascript")
        :! nodejs %
    endif
    :e
endfunc
:command R :call Run()

function! Compile()
    :w
    if (&filetype == "tex")
        :! texp -c %
    endif
    :e
endfunc
:command C :call Compile()

function! Debug()
    if (&filetype == "tex")
        :! texp -d %
    endif
endfunc
:command D :call Debug()

function! Prettify()
    :w
    if (&filetype == "json")
        :%! python -m json.tool
        :w
        :normal! zR
    endif
    :e
endfunc
:command Pretty :call Prettify()

:command -nargs=* M :! make <f-args>

function! Write()
    :wa
    :make
endfunc
:command W :call Write()

function! Trailing()
    :%s/\s\s*$//
endfunc
