" General
set shortmess=atI                           " Don't show intro message
set noerrorbells                            " Disable beeps
set title                                   " Filenames in title bar
set showcmd                                 " Show command being typed
set ttyfast                                 " Optimize for fast terminal connections
set nocompatible                            " Make vim better

set number                                  " Line Numbers
set ruler                                   " Show where we are
set cursorline                              " Highlight current line
set nocursorcolumn                          " Speed up syntax highlighting
set mouse=a                                 " Enable mouse mode
set wildmenu

set laststatus=2                            " Use Lightline
set noshowmode                              " Do now show mode as we have the light line

" File Handling
set encoding=utf-8 nobomb
set autoread                                " Automatically read file when changed on disc
set autowrite                               " Automatically save before :next, :make etc.

set noswapfile                              " No swap file
set nobackup                                " No backup
set nowritebackup                           
set fileformats=unix,dos,mac                " Prefer Unix over Windows over OS 9 formats

set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set backspace=indent,eol,start
set complete-=i

set binary                                  " Don't add empty newlines at the end of files
set noeol

" Code Handling
set hidden
set nofoldenable                            " Don't fold code
set showmatch                               " Show matching braces

" Color and Syntax highlighting
colorscheme base16-default-dark             " Color Scheme

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif


" Splits
set splitright                              " Split vertical windows right to the current windows
set splitbelow                              " Split horizontal windows below to the current windows

" Searching
set ignorecase                              " Search case insensitive...
set smartcase                               " ... but not if it begins with upper case 
set hlsearch                                " Highlight searches
set incsearch                               " Highlight when pattern is typed

" Lightline
"let g:lightline = {
"      \ 'colorscheme': 'base16_default_light',
"      \ }

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" fzf
set rtp+=/usr/local/opt/fzf

" Ale
" Always show ALE Gutter
let g:ale_sign_column_always = 1