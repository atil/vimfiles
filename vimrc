" Edit
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrap!
set wrap linebreak nolist
set backspace=indent,eol,start
imap <C-BS> <C-W>

" Buffers
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
set autowriteall
set hidden
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
nmap <silent> <C-W> :bd<CR>
nmap <silent> <C-S-W> :%bd<bar>e#<bar>bd#<CR>
nmap <silent> <C-Tab> :bn<CR>
command W w
command Wa wa

" Gvim
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h18
set guicursor +=a:blinkon0

" Project specific 
cd ~\Documents\hell

" Plugings
call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
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
 
 
