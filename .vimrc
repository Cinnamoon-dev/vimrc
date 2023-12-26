" identation config
set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set shiftwidth=4
set smartindent
set smarttab

" enable mouse click
set mouse=a

" show useful stuff
set showcmd
set showmatch
set cursorline
set cursorcolumn
set number
set relativenumber
set title
set showtabline=2

" useful configs
set nocompatible
set encoding=utf-8
set t_Co=256
set autoread
set backspace=indent,eol,start
set scrolloff=4
set clipboard+=unnamedplus

" enable syntax processing
syntax enable

" choose theme
colorscheme slate

" netrw
let g:netrw_keepdir = 0
let g:netrw_winsize = 25
" You can temporarily see the banner by using I
let g:netrw_banner = 0
let g:netrw_liststyle= 3
