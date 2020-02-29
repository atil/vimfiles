call plug#begin('~/vimfiles/plugged')
Plug 'mswift42/vim-themes'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

colorscheme darktooth

set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set guifont =Consolas:h12
set guicursor +=a:blinkon0
set wrap!
cd ~\Documents\hell

let g:rustfmt_autosave = 1

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
nmap t <Plug>(easymotion-overwin-w)
