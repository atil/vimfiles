call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
call plug#end()

set incsearch
set hlsearch
set ignorecase
set smartcase
set wrap!
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,full
set splitbelow
set splitright
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_winsize=10
nnoremap <leader>n :Lexplore<CR>
colorscheme darktooth

set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h12
set guicursor +=a:blinkon0
cd ~\Documents\hell

let g:rustfmt_autosave = 1

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
nmap t <Plug>(easymotion-overwin-w)

let g:ctrlp_map = '<c-t>'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|target\|node_modules\|log\|tmp$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
 
 
