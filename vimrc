set nocompatible                            " Make vim better
filetype off
filetype plugin indent on

set ttyfast                                 " Optimize for fast terminal connections

" Pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

colorscheme Molokai                         " Color Scheme
syntax on                                   " Syntax highlighting
filetype plugin indent on                   " Indent

set number                                  " Line Numbers
set ruler                                   " Show where we are
set cursorline                              " Highlight current line
set nocursorcolumn                          " Speed up syntax highlighting
set mouse=a                                 " Enable mouse mode

set shortmess=atI                           " Don't show intro message
set noerrorbells                            " Disable beeps
set title                                   " Filenames in title bar
set showcmd                                 " Show command being typed

set encoding=utf-8 nobomb
set autoread                                " Automatically read file when changed on disc
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set splitright                              " Split vertical windows right to the current windows
set splitbelow                              " Split horizontal windows below to the current windows
set autowrite                               " Automatically save before :next, :make etc.
set hidden
set nofoldenable                            " Don't fold code
set showmatch                               " Show matching braces

set clipboard=unnamed                       " Use OS clipboard

set backspace=indent,eol,start              " Enable backspacing over everything in insert
set noshowmode                              " Don't show mode
set laststatus=2                            " We are using lightline
set wildmenu                                " Enhance command-line completion
set completeopt=menu,menuone                " Better completion
set esckeys                                 " Allow cursor keys in insert

set noswapfile                              " No swap file
set nobackup                                " No backup
set nowritebackup                           
set fileformats=unix,dos,mac                " Prefer Unix over Windows over OS 9 formats

set ignorecase                              " Search case insensitive...
set smartcase                               " ... but not if it begins with upper case 
set hlsearch                                " Highlight searches
set incsearch                               " Highlight when pattern is typed

set binary                                  " Don't add empty newlines at the end of files
set noeol

" Open Nerdtree when vim starts up
" autocmd vimenter * NERDTree

" Open Nerdtree when no files specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open Nerdtree when directory specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close VIM when only one window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open Nerdtree with CTRL+O
map <C-o> :NERDTreeToggle<CR>

" Always show ALE Gutter
let g:ale_sign_column_always = 1
