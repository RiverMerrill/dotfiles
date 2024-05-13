syntax on
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set rnu
set scrolloff=8
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set incsearch
set nohlsearch
set termguicolors
set colorcolumn=80
set clipboard=unnamedplus

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'dikiaap/minimalist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-commentary'

call plug#end()

set t_Co=256
colorscheme minimalist

let loaded_matchparen = 1
let mapleader = " "

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
nnoremap <C-p> :GFiles<CR>
let g:user_emmet_leader_key=','
let g:coc_global_extensions = [ 'coc-tsserver' ]

xnoremap <C-\> gc

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>




" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


