set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ddollar/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'chrisbra/NrrwRgn'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'fatih/vim-go'
Plugin 'surround.vim'
Plugin 'xolox/vim-misc'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'danro/rename.vim'

call vundle#end()

colorscheme Tomorrow-Night

set history=700

filetype plugin on
filetype indent on

set autoread

let mapleader=" "
let g:mapleader=" "
let g:ackprg = 'ag --nogroup --nocolor --column'

nnoremap <leader>fef gg=G``

nmap <leader>w :w!<cr>
nmap <leader>n :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

imap jk <Esc>

command W w !sudo tee % > /dev/null

set wildmenu
set wildignore=*.0,*~,*.pyc,.git/*
set ruler
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set visualbell
set noerrorbells
set t_vb=
set tm=500

syntax enable
set encoding=utf8
set ffs=unix
set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
set wrap
set laststatus=2

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" go bindings

au FileType go nmap <Leader>gr <Plug>(go-run)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
