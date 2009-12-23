set nocompatible

set shm=atI                 " Disable intro screen
set ttyfast                 " Improves redrawing for newer computers
set wrap linebreak " Automatically break lines
set pastetoggle=<f2> " Use <f2> to paste in text from other app
set wildmode=full wildmenu  " Enable command-line tab completion


if has('gui_running')
    set guicursor=a:blinkon0 " Disable blinking cursor
    set guioptions=haMR " Disable default menus (I've defined my own in my .gvimrc)
    set guifont=Deja\ Vu\ Sans\ Mono:h12
    set columns=100 lines=38 fuoptions=maxvert,maxhorz " Default window size
endif

syntax on

filetype on
filetype plugin on
filetype plugin indent on


color vividchalk

if !has("gui_running")
    set background=dark
endif

" Auto-Detecting charset
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8 bomb
    set fileencodings=utf-8,cp1251,koi8-r,latin1
    set fileformats=unix,dos,mac
endif
