" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jnurmine/Zenburn'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
call plug#end()

" Appearance
colorscheme zenburn

set number
set list

set cursorline
set colorcolumn=+1
set showmatch

" Behaviour
set textwidth=80

set ignorecase
set smartcase

set splitbelow
set splitright

" Indentation
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

" Mappings
let mapleader = ' '

inoremap jj <Esc>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Tab> <C-W><C-W>

nnoremap <Leader>f :Files<CR>

nnoremap <silent> <Leader>s :set spell!<CR>

" Spelling
set spelllang=en_gb,it
set spellfile=$HOME/.vim/spell/good.utf-8.add
