set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Plugin 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'docunext/closetag.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'slashmili/alchemist.vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'rhysd/vim-clang-format'
Plugin 'rust-lang/rust.vim'


if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:closetag_html_style=1

let NERDTreeWinPos='left'
let NERDTreeWinSize=30
nmap z :NERDTree<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

let javascript_enable_domhtmlcss=1
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/youcompleteme/.ycm_extra_conf.py'
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl,rust': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ 'haskell': ['.']
            \ }
let g:clang_format#auto_format_on_insert_leave=1
let g:rustfmt_autosave=1

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
syntax enable
syntax on
set termguicolors
colorscheme monokai_pro
set t_Co=256
set ignorecase
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
filetype plugin on
