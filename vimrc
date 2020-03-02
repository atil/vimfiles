" Regular
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrap!
set wrap linebreak nolist
set backspace=indent,eol,start
imap <C-BS> <C-W>
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
set autowriteall
set hidden
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
command W w
colorscheme darktooth

" Gvim
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h18
set guicursor +=a:blinkon0
cd ~\Documents\hell

" Plugings
call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
call plug#end()

" Rust
let g:rustfmt_autosave = 1

" Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
nmap <C-P> <Plug>(easymotion-overwin-w)

" CtrlP
let g:ctrlp_map = '<c-t>'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|target\|node_modules\|log\|tmp$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
 
 
