syntax on
filetype plugin on
colorscheme vividchalk

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete


" Auto-Detecting charset
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8 bomb
    set fileencodings=utf-8,cp1251,koi8-r,latin1
    set fileformats=unix,dos,mac
"endif
