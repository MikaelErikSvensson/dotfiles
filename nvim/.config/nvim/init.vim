" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \                                                                  
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 
call plug#begin('~/.config/nvim/plugged')  
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'loonies/vim-swoop'
Plug 'pangloss/vim-javascript'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'peitalin/vim-jsx-typescript'
Plug 'luochen1990/rainbow'
call plug#end()

let g:loaded_python_provider = 0
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
set relativenumber
set clipboard+=unnamedplus
set paste
set pastetoggle=<F2>
map <C-n> :NERDTreeToggle<CR>

autocmd vimenter * NERDTree
let mapleader = "\<Space>"

map <silent> <Leader>ff :FZF<CR>

nmap <silent> <Leader>sp :Buffers<CR>
nmap <silent> <Leader>bf :BLines<CR>
nmap <silent> <Leader>bb :Buffers<CR>
"" Airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts            = 1

set background=dark
colorscheme gruvbox
if has('termguicolors')
  set termguicolors
endif

"" EasyMotion
" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
let g:EasyMotion_do_mapping = 0
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <silent> s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
