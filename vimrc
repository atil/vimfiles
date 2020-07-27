""""""""""""
" Editing "
"""""""""""
set ts=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set hlsearch
syntax on
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
noremap <silent> <M-j> <C-e>j
noremap <silent> <M-k> <C-y>k
noremap <silent> <M-h> ^
noremap <silent> <M-l> $
noremap <silent> <M-s> :wa<CR>
imap <silent> <C-s> <esc>:wa<CR>
noremap <silent> <M-c> "*y
noremap <silent> <M-v> "*p
let mapleader="\<Space>"
imap <M-Space> <Esc>
set nobackup
set noswapfile
set scrolloff=3
xnoremap p pgvy
set belloff=all
set laststatus=1
" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
 
" what
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
nmap <silent> <leader>egv :e ~/AppData/Local/nvim/ginit.vim<cr>
nmap <silent> <leader>sv :w<bar>so $MYVIMRC<cr>
nmap <silent> <leader>sgv :w<bar>so ~/AppData/Local/nvim/ginit.vim<cr>
nnoremap <silent> <M-q> :bd!<CR>
nmap <silent> <M-S-q> :w<bar>%bd<bar>e#<bar>bd#<CR>
nmap <silent> <M-S-l> :bn<CR> 
nmap <silent> <M-S-h> :bp<CR> 
vmap <silent> <M-S-l> <esc>:bn<CR> 
vmap <silent> <M-S-h> <esc>:bp<CR> 
imap <silent> <M-S-l> <esc>:bn<CR> 
imap <silent> <M-S-h> <esc>:bp<CR> 
imap <silent> <C-Tab> <esc>:bn<CR>

if !exists(':W')
    command W w " Prevent typos
    command Wa wa " Prevent typos
endif

""""""""
" Gvim "
""""""""
if has("gui_running")
au GUIEnter * simalt ~x " Start fullscreen
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
"set guifont =Consolas:h16
GuiFont Consolas:h16
set guicursor +=a:blinkon0 " Solid cursor at all time
endif

""""""""""""""""""""
" Project specific "
""""""""""""""""""""
cd ~\Code\hell
if !exists(':Cddaily') " Why does it try to add twice? Happens with nvim
    command Cddaily cd ~\code\work\daily
endif

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/vimfiles/plugged')
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tikhomirov/vim-glsl'
Plug 'morhetz/gruvbox'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()
colorscheme hell
if !exists(':Light')
    command Light colorscheme gruvbox|set background=light|syntax on
endif
if !exists(':Dark')
    command Dark colorscheme hell|set background=dark|syntax on
endif

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
 
" Comfortable motion
let g:comfortable_motion_friction = 800.0
let g:comfortable_motion_air_drag = 4.0
nnoremap <silent> <C-f> :call comfortable_motion#flick(400)<CR>
n
