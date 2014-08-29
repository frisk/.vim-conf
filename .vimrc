set nocp
execute pathogen#infect()
syntax enable
set mouse=c
set number
set incsearch
set hlsearch
set nohidden
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> E ((getcmdtype() is# ':' && getcmdline() is# 'E')?('e'):('E'))
cnoreabbrev <expr> B ((getcmdtype() is# ':' && getcmdline() is# 'B')?('b'):('B'))
cnoreabbrev <expr> b ((getcmdtype() is# ':' && getcmdline() is# 'b')?('b!'):('b'))
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
colorscheme monokai
filetype plugin indent on
" NERD Tree autoload when VIM starts
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
