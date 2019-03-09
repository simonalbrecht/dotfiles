" Pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Syntax highlighting
syntax on
filetype plugin indent on

" Line Numbers
set number
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Highlight current line
set cursorline

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Disable backup and swap files
set noswapfile
set nobackup
set nowritebackup

" Encoding and whitespace
set encoding=utf-8 nobomb
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Show trailing spaces and highlight hard tabs

" No code folding
set nofoldenable

" Show matching braces
set showmatch

" Enable backspacing over everything in insert mode
set backspace=indent,eol,start

" Show status line instead of mode display
set noshowmode
set laststatus=2

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" History
" Highlight dynamically as pattern is typed
set incsearch
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase

" Don’t add empty newlines at the end of files
set binary
set noeol

" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells

" Nerdtree
" Open Nerdtree when vim starts up
autocmd vimenter * NERDTree

" Open Nerdtree when no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open Nerdtree when directory specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Open Nerdtree with CTRL+O
map <C-o> :NERDTreeToggle<CR>

