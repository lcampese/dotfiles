" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'jnurmine/Zenburn'
Plug 'tpope/vim-sensible'
call plug#end()

" Appearance
set colorcolumn=+1
set list
set number
silent! colorscheme zenburn

" Behavior
set ignorecase
set smartcase
set spell
set splitbelow
set splitright
set textwidth=80

" Mappings
let mapleader = " "

inoremap jj <Esc>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Tab> <C-W><C-W>

nmap s <Plug>(easymotion-s)
