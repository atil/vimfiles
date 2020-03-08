" Edit
set incsearch
set hlsearch
nnoremap <silent> <esc> :noh<return><esc>
set ignorecase
set smartcase
set wrap!
set wrap linebreak nolist
set backspace=indent,eol,start
imap <C-BS> <C-W>
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> ^ g^
noremap <silent> $ g$
noremap <silent> <M-c> "*y<CR>
noremap <silent> <M-v> "*p<CR>

" Buffers
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
set autowriteall
set hidden
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :w<bar>so $MYVIMRC<cr>
nnoremap <silent> <M-w> :bd<CR>
nmap <silent> <C-S-W> :w<bar>%bd<bar>e#<bar>bd#<CR>
nmap <silent> <C-Tab> :bn<CR>
command W w
command Wa wa

" Gvim
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h16
set guicursor +=a:blinkon0

" Project specific 
cd ~\Documents\hell

" Plugins
call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
call plug#end()
colorscheme darktooth

" Rust
let g:rustfmt_autosave = 1

" Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
nmap <C-P> <Plug>(easymotion-overwin-w)

" CtrlP
let g:ctrlp_map = '<c-t>'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|target\|log\|tmp$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
 
 
