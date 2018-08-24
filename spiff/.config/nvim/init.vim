"
" Load plugins
"
call plug#begin('~/.config/nvim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-janah'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
call plug#end()

if has("syntax")
  syntax on
endif
set number

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" move up/down on line-wise basis
nmap j gj
nmap k gk

" Emacs-style movement keys in command line
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch
set gdefault
set magic
nmap <Leader>q :nohlsearch<CR>
nmap <Leader>s :%s//g<Left><Left>

" Buffers
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs vs spaces
set tabstop=4
set expandtab
set shiftwidth=4

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set autowrite           " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set laststatus=2

" Colors!!
autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah

"
" Configure plugins
"

" airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
