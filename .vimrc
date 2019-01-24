let mapleader = ","
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

call vundle#end()            " required
filetype plugin indent on 
filetype plugin on

" For problems with backspace
set backspace=indent,eol,start

set term=screen-256color
set background=dark

autocmd BufRead,BufNewFile *.py let python_highlight_all=1

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set number
set relativenumber
set clipboard=unnamed
set noswapfile
set wildmode=longest,list,full

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab

autocmd BufEnter *.txt set filetype=text
autocmd FileType text set textwidth=140

set encoding=utf-8


