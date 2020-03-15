""""""""""""
" Editing "
"""""""""""
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
nmap <Space> i
imap <M-Space> <Esc>

"""""""""""
" Buffers "
"""""""""""
set wildmenu
set wildmode=longest:full,full " Dunno what this does
set splitbelow " Better hsplit position
set splitright " Better vsplit position
set autowriteall " Save when switching the buffers
au FocusLost * silent! wa " Save on focus change
set hidden " Be able to switch away from unsaved buffers
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :w<bar>so $MYVIMRC<cr>
nnoremap <silent> <M-w> :bd<CR>
nmap <silent> <C-S-W> :w<bar>%bd<bar>e#<bar>bd#<CR>
nmap <silent> <C-Tab> :bn<CR>
command W w " Prevent typos
command Wa wa " Prevent typos

""""""""
" Gvim "
""""""""
au GUIEnter * simalt ~x " Start fullscreen
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h16
set guicursor +=a:blinkon0 " Solid cursor at all time

""""""""""""""""""""
" Project specific "
""""""""""""""""""""
cd ~\Documents\hell

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
call plug#end()
colorscheme hell

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
 
 
