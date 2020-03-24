""""""""""""
" Editing "
"""""""""""
set ts=4
set expandtab
set smartindent
set incsearch
set hlsearch
nnoremap <silent> <esc> :noh<return><esc>
set ignorecase
set smartcase
set wrap!
set wrap linebreak nolist
set backspace=indent,eol,start
imap <C-BS> <C-W>
set clipboard+=unnamed
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> ^ g^
noremap <silent> $ g$
noremap <silent> <M-h> 4h
noremap <silent> <M-j> 4j
noremap <silent> <M-k> 4k
noremap <silent> <M-l> 4l
noremap <silent> <C-s> :wa<CR>
imap <silent> <C-s> <esc>:wa<CR>
let mapleader="\<Space>"
imap <M-Space> <Esc>
set nobackup
set noswapfile
set scrolloff=3
nnoremap <silent> <leader>qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :w<bar>so $MYVIMRC<cr>
nnoremap <silent> <M-w> :bd<CR>
nmap <silent> <C-S-W> :w<bar>%bd<bar>e#<bar>bd#<CR>
nmap <silent> <C-Tab> :bn<CR>
imap <silent> <C-Tab> <esc>:bn<CR>
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
Plug 'ap/vim-buftabline'
Plug 'GrzegorzKozub/vimdows'
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
