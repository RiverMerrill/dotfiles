set number
syntax on
set noswapfile
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
map <silent> <C-S-n> :Files .<CR>
