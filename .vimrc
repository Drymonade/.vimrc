set nocompatible
set nocursorline
set lazyredraw

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'fatih/vim-go'
Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()

filetype plugin indent on

autocmd vimenter * NERDTree
let g:NERDTreeWinSize=50
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set termencoding=utf-8

colorscheme hybrid

let mapleader = " "

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"multiple paste
xnoremap p pgvy

"my typical typo
cnoreabbrev W w

" Stay on visual mode when shifting blocks
vnoremap > >gv
vnoremap < <gv

" Fast oneline python (un)comment
nnoremap <leader>q ^i# <Esc>
nnoremap <leader>w ^d d d<Esc>

set bs=2
set showmatch           " show matching brackets/parenthesis

set guifont=Source\ Code\ Pro\ for\ Powerline:h16 

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set smarttab |
    \ set expandtab |
    \ set fileformat=unix

au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set smarttab | 
    \ set expandtab |
    \ set smartindent |
    \ set fileformat=unix

autocmd BufWritePost *.py call Flake8()

highlight BadWhitespace ctermbg=red
au BufRead,BufNewFile *.py,*.pyw,*.js match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on

set nu
nnoremap o o<Esc>

set clipboard=unnamed
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
