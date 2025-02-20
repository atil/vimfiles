"""""""""""
" Editing "
"""""""""""

" this is the best leader key
let mapleader="\<Space>"

" tabstop is 4 chars wide
set ts=4

" shifting (with << etc) is 4 chars wide
set shiftwidth=4

" spaces instead of tabs
set expandtab

" smart indent
set smartindent

" incremental search -- search as we type
set incsearch

" highlight search 
set hlsearch

" esc removes the search highlight
nnoremap <silent> <esc> :noh<return><esc>

" search is case insensitive
set ignorecase

" ... unless we use an uppercase letter
set smartcase

" set word wrap but what is this !
set wrap!

" don't break the line from the word
" what's the nolist for though?
set wrap linebreak nolist

" make backspace work
set backspace=indent,eol,start

" ctrl+backspace deletes the word
imap <C-BS> <C-W>

" use system clipboard
set clipboard+=unnamed

" make wrapping actually usable by moving through the visual lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> ^ g^
noremap <silent> $ g$

" scroll without moving the cursor
noremap <silent> <M-j> <C-e>j
noremap <silent> <M-k> <C-y>k

" be more on the home row
noremap <silent> <M-h> g^
noremap <silent> <M-l> g$

" better save shortcut
noremap <silent> <M-s> :wa<CR>
imap <silent> <M-s> <esc>:wa<CR>

" copyto/pastefrom system clipboard
noremap <silent> <M-c> "*y
noremap <silent> <M-v> "*p

" disable those pesky backup/swap files
set nobackup
set noswapfile

" don't go until the end of the screen to scroll further
set scrolloff=3

" retain what was copied after pasting
xnoremap p pgvy

" no annoying ringing
set belloff=all

" disable status line 
set laststatus=1

" get rid of the numbers on bottom-right
set noruler

" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" see syntax
syntax on
 
" tell what sort of thing is under the cursor
nnoremap <silent> <leader>qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"""""""""""
" Buffers "
"""""""""""

" wildmenu is da best
set wildmenu
set wildmode=longest:full,full " Dunno what this does

" save when switching the buffers
set autowriteall 

" save on focus change
au FocusLost * silent! wa 

" be able to switch away from unsaved buffers
set hidden 

" edit/execute vimrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :w<bar>so $MYVIMRC<cr>

" nvim: edit/execute ginit
nmap <silent> <leader>egv :e ~/AppData/Local/nvim/ginit.vim<cr>
nmap <silent> <leader>sgv :w<bar>so ~/AppData/Local/nvim/ginit.vim<cr>

" close all tabs but this (reset the cursor)
nmap <silent> <M-S-q> :w<bar>%bd<bar>e#<bar>bd#<CR>

" better tab switching
nmap <silent> <M-S-k> :bn<CR>
nmap <silent> <M-S-j> :bp<CR>
vmap <silent> <M-S-k> <esc>:bn<CR>
vmap <silent> <M-S-j> <esc>:bp<CR>
imap <silent> <M-S-k> <esc>:bn<CR>
imap <silent> <M-S-j> <esc>:bp<CR>

""""""""""
" Splits "
""""""""""

" better hsplit position
set splitbelow 

" better vsplit position
set splitright 

" easier split switching
nmap <silent> <M-S-h> <C-w><C-h>
nmap <silent> <M-S-l> <C-w><C-l>

" Prevent typos
if !exists(':W') " Why does it try to add twice? Happens with nvim
    command W w 
    command Wa wa
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

"""""""""""
" Plugins "
"""""""""""

call plug#begin('~/vimfiles/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'ap/vim-buftabline'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-commentary'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
nmap <C-P> <Plug>(easymotion-overwin-w)
 
" bufkill
nmap <silent> <M-q> :BD!<CR>

" Commentary
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>c <Plug>Commentary
vmap <leader>c <Plug>Commentary
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s

silent! colorscheme nord

"""""""""""""
" ginit.vim "
"""""""""""""
" location: %LOCALAPPDATA%\nvim

"let s:fontsize = 13
"function! AdjustFontSize(amount)
"  let s:fontsize = s:fontsize+a:amount
"  :execute "GuiFont! Consolas:h" . s:fontsize
"endfunction
"
"noremap <C-=> :call AdjustFontSize(1)<CR>
"noremap <C--> :call AdjustFontSize(-1)<CR>
"
"GuiTabline 0
"execute "GuiFont! Cascadia\ Mono:h" . s:fontsize
