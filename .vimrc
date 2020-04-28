syntax on
color mustang  

set ai              " auto indent
set autoread        " 
set cursorline      " highlight current line
set encoding=utf8   "
set expandtab       " use spaces instead of tabs 
set hid             " hide abandoned buffer
set hlsearch        " highlight matches
set incsearch       " search instantaneously
set lazyredraw      " don't redraw when executing macros
set magic           " for regular expressions
set number          " show line number 
set nobackup        "
set noswapfile      "
set nowb            "
set noerrorbells    " 
set novisualbell    " 
set shiftwidth=4    " 
set showcmd         " 
set showmatch       " highlight matching
set si              " smart indent
set softtabstop=4   " 
set tabstop=4       " 
set wildmenu        " autocomplete for menu
set wrap            " wrap lines


""" nerdtree 
"""
" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"
autocmd vimenter * wincmd p

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = 'v'
let NERDTreeIgnore = ['\.log$', '\.out$', '\.pyc$', '\.sh$']

