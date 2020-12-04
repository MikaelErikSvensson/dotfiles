call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()
set relativenumber

map <C-n> :NERDTreeToggle<CR>

autocmd vimenter * NERDTree
let mapleader = "\<Space>"

map <silent> <Leader>ff :FZF<CR>

nmap <silent> <Leader>sp :Buffers<CR>
nmap <silent> <Leader>bf :BLines<CR>
nmap <silent> <Leader>bb :Buffers<CR>
