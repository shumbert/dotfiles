set nocompatible

if has("syntax")
  syntax on
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set autowrite           " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
" set mouse=a             " Enable mouse usage (all modes)
set laststatus=2
set tabstop=4
set expandtab

let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
set background=dark
colorscheme solarized

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
