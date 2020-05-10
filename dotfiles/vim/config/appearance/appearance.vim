if has("autocmd")
  filetype plugin indent on
endif

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

"set tw=80
set cc=81

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch            " Highlight all matches
set autowrite           " Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=a             " Enable mouse usage (all modes)
set number              " Show line number
set backspace=indent,eol,start
set shiftround
set showmode
set ruler
set autoindent
set cole=2
set cocu="nc"

set foldmethod=syntax

syntax on

let g:tex_conceal = ""  " Disable LaTeX conceal mode
