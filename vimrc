set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'preservim/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'rhysd/vim-clang-format'
Plugin  'neoclide/coc.nvim', {'branch': 'release'}


let NERDTreeWinPos='left'
let NERDTreeWinSize=30
nmap z :NERDTree<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

set laststatus=2
set t_Co=256
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='luna'

let g:clang_format#auto_format_on_insert_leave=1

syntax on
filetype on
filetype plugin indent on

set number
set backspace=indent,eol,start
set ruler
set showcmd
set nobackup
set noswapfile
set showmatch
set autoindent
set cindent
set termguicolors
colorscheme monokai_pro
set ignorecase
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
