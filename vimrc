" override the machine's language
language en_US

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

" case-insensitive search
" we need this for smartcase to work
" https://stackoverflow.com/questions/2287440/#comment12651093_2288438
set ignorecase
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

" Prevent typos
if !exists(':W') " Why does it try to add twice? Happens with nvim
    command W w 
    command Wa wa
endif

"""""""""""
" Plugins "
"""""""""""

call plug#begin('~/vimfiles/plugged')
Plug 'ap/vim-buftabline'
Plug 'qpkorr/vim-bufkill'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" bufkill
nmap <silent> <M-q> :BD!<CR>

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
"execute "GuiFont! Consolas:h" . s:fontsize
