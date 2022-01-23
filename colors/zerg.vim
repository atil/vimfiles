" Vim color file
" hell
" Created by with ThemeCreator (https://github.com/mswift42/themecreator)
" Then modified by pingFromHeaven

hi clear

if exists("syntax on")
    syntax reset
endif

syn match Braces display '[{}()\[\]]'
syn match zOperator "+\|-\|\*\|;\|?\|:\|,\|<\|>\|&\||\|!\|\~\|%\|="

set t_Co=256
let g:colors_name = "zerg"

let bg="#262626"
let bg2="#363636"
let yellow="#d9bf8c"
let purple="#997686"
let blue="#669199"
let red="#b35e4d"
let gray="#b8b8b8"
let gray2="#DADBD6"
let gray3="#8c8c8c"
let green="#738c73"
let pureyellow="#ffff00"
let purered="#ff0000"

" Editor colors
exec "hi Normal guifg=" yellow " guibg=" bg 
exec "hi Visual guifg=" gray2 " guibg=" bg2
exec "hi Cursor guifg=" bg " guibg=" yellow 
exec "hi CursorLine guibg=" bg 
exec "hi CursorColumn guibg=" bg 
exec "hi ColorColumn guibg=" bg 
exec "hi LineNr guifg=" yellow " guibg=" bg 
exec "hi VertSplit guifg=" yellow " guibg=" bg 
exec "hi MatchParen guifg=" yellow " guibg=" bg "gui=underline"
exec "hi StatusLine guifg=" yellow " guibg=" bg "gui=bold"
exec "hi Pmenu guifg=" yellow " guibg=" bg
exec "hi PmenuSel guibg=" bg 
exec "hi Search guifg=" yellow " guibg=" bg2 "gui=underline"
exec "hi IncSearch guifg=" yellow " guibg=" bg2 
exec "hi Directory guifg=" yellow  
exec "hi Folded guifg=" yellow " guibg=" bg
exec "hi Comment guifg=" green  
exec "hi NonText guifg=" bg " guibg=" bg 
exec "hi String guifg=" gray 

" Requires BufTabLine
exec "hi BufTabLineCurrent guifg=" yellow " guibg=" bg2
exec "hi BufTabLineHidden guifg=" yellow " guibg=" bg
exec "hi BufTabLineFill guifg=" yellow " guibg=" bg

exec "hi zOperator guifg="gray2
exec "hi Braces guifg="gray2
exec "hi cParen guifg="purple  
exec "hi cCustomFunc guifg="purple  
exec "hi Boolean guifg="blue  
exec "hi Character guifg="blue  
exec "hi Conditional guifg="blue  
exec "hi Constant guifg="blue
exec "hi Define guifg="purple  
exec "hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold"
exec "hi DiffDelete guibg=" bg  
exec "hi DiffChange guibg= #151b3c guifg=#fafafa"
exec "hi DiffText guifg=#ffffff  guibg= #ff0000 gui=bold"
exec "hi ErrorMsg guifg=" purered " guibg=" bg "gui=bold"
exec "hi WarningMsg guifg=" pureyellow " guibg=" bg 
exec "hi Float guifg="gray2 
exec "hi Function guifg="purple  
exec "hi Identifier guifg=" blue "gui=italic"
exec "hi Keyword guifg=" blue "gui=bold"
exec "hi Label guifg=" yellow
exec "hi Number guifg=" gray2  
exec "hi Operator guifg=" blue  
exec "hi PreProc guifg=" purple  
exec "hi Special guifg=" yellow  
exec "hi SpecialKey guifg=" yellow " guibg=" bg 
exec "hi Statement guifg=" blue
exec "hi StorageClass guifg=" blue "gui=italic"
exec "hi Tag guifg="blue  
exec "hi Title guifg=" yellow "gui=bold"
exec "hi Todo guifg=" pureyellow " guibg=" bg "gui=bold"
exec "hi Type guifg="blue 
exec "hi cType guifg="red
exec "hi Underlined gui=underline"
