" Vim color file
" hell
" Created by with ThemeCreator (https://github.com/mswift42/themecreator)
" Then modified by pingFromHeaven

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "hell"

let s:bg="#110f0d"
let s:fg="#C6A177"
let s:fg2="#b6946d"
let s:fg3="#a68764"
let s:fg4="#967a5a"
let s:bg2="#242220"
let s:bg3="#373534"
let s:bg4="#4a4947"
let s:keyword="#BD5004"
let s:builtin="#F7C100"
let s:const= "#E09D0B"
let s:comment="#5d5d5d"
let s:func="#6D5347"
let s:str="#F68B09"
let s:type="#ab1f0c"
let s:var="#b39b5f"
let s:warning="#C00000"
let s:warning2="#e86310"

" Editor colors
exe 'hi Normal guifg='s:fg' guibg='s:bg 
exe 'hi Visual guifg='s:fg' guibg='s:bg2
exe 'hi Cursor guifg='s:bg' guibg='s:fg 
exe 'hi CursorLine  guibg='s:bg2 
exe 'hi CursorColumn guibg='s:bg2 
exe 'hi ColorColumn guibg='s:bg2 
exe 'hi LineNr guifg='s:fg2' guibg='s:bg2 
exe 'hi VertSplit guifg='s:fg3' guibg='s:bg3 
exe 'hi MatchParen guifg='s:fg' guibg='s:bg' gui=underline'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel guibg='s:bg3 
exe 'hi Search guifg='s:fg' guibg='s:bg2' gui=underline'
exe 'hi IncSearch guifg='s:fg' guibg='s:keyword 
exe 'hi Directory guifg='s:const  
exe 'hi Folded guifg='s:fg4' guibg='s:bg

" Requires BufTabLine
exe 'hi BufTabLineCurrent guifg='s:fg4' guibg='s:bg
exe 'hi BufTabLineHidden guifg='s:bg4' guibg='s:bg
exe 'hi BufTabLineFill guifg='s:fg' guibg='s:bg

exe 'hi Comment guifg='s:comment  
exe 'hi NonText guifg='s:bg4' guibg='s:bg2 
exe 'hi String guifg='s:str  

let extension = expand('%:e')
if extension == "rs"
	" Primitives
	exec "highlight rustBoolean guifg=" . s:const
	exec "highlight rustFloat guifg=" . s:const
	exec "highlight rustString guifg=" . s:str
	exec "highlight rustContinuaion guifg=" . s:str
	exec "highlight rustConstant guifg=" . s:const
	exec "highlight rustDecNumber guifg=" . s:const
	exec "highlight rustOctNumber guifg=" . s:const
	exec "highlight rustHexNumber guifg=" . s:const
	exec "highlight rustBinNumber guifg=" . s:const

	" Types
	exec "highlight rustEnum guifg=" . s:type
	exec "highlight rustEnumVariant guifg=" . s:type
	exec "highlight rustStorage guifg=" . s:keyword
	exec "highlight rustStructure guifg=" . s:keyword
	exec "highlight rustSelf guifg=" . s:keyword
	exec "highlight rustSigil guifg=" . s:keyword
	exec "highlight rustTrait gui=italic guifg=" . s:type
	exec "highlight rustType guifg=" . s:type

	" Keywords
	exec "highlight rustFuncName guifg=" . s:func
	exec "highlight rustFuncCall guifg=" . s:func
	exec "highlight rustIdentifier guifg=" . s:var
	exec "highlight rustKeyword guifg=" . s:keyword
	exec "highlight rustLifetime guifg=" . s:fg
	exec "highlight rustMacro guifg=" . s:keyword
	exec "highlight rustAssert guifg=" . s:keyword
	exec "highlight rustPanic guifg=" . s:keyword
	exec "highlight rustConditional guifg=" . s:keyword
	exec "highlight rustRepeat guifg=" . s:keyword
	exec "highlight rustArrowCharacter guifg=" . s:keyword
	exec "highlight rustOperator guifg=" . s:keyword
	exec "highlight rustUnsafeKeyword guifg=" . s:keyword
	exec "highlight rustModPathSep guifg=" . s:keyword
	exec "highlight rustLabel guifg=" . s:const

	" Above the file
	exec "highlight rustDerive guifg=" . s:const
	exec "highlight rustMacroVariable guifg=" . s:fg
	exec "highlight rustModPath guifg=" . s:type
	exec "highlight rustAssert guifg=" . s:fg
	exec "highlight rustAttribute guifg=" . s:const

	" Comment
	exec "highlight rustCommentBlock guifg=" . s:comment
	exec "highlight rustCommentLine guifg=" . s:comment
	exec "highlight rustTodo guifg=" . s:warning
else
	exe 'hi Boolean guifg='s:const  
	exe 'hi Character guifg='s:const  
	exe 'hi Conditional guifg='s:keyword  
	exe 'hi Constant guifg='s:const  
	exe 'hi Define guifg='s:keyword  
	exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
	exe 'hi DiffDelete guibg='s:bg2  
	exe 'hi DiffChange  guibg=#151b3c guifg=#fafafa'
	exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
	exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
	exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2 
	exe 'hi Float guifg='s:const  
	exe 'hi Function guifg='s:func  
	exe 'hi Identifier guifg='s:type'  gui=italic'
	exe 'hi Keyword guifg='s:keyword'  gui=bold'
	exe 'hi Label guifg='s:var
	exe 'hi Number guifg='s:const  
	exe 'hi Operater guifg='s:keyword  
	exe 'hi PreProc guifg='s:keyword  
	exe 'hi Special guifg='s:fg  
	exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2 
	exe 'hi Statement guifg='s:keyword  
	exe 'hi StorageClass guifg='s:type'  gui=italic'
	exe 'hi Tag guifg='s:keyword  
	exe 'hi Title guifg='s:fg'  gui=bold'
	exe 'hi Todo guifg='s:warning' guibg='s:bg' gui=bold'
	exe 'hi Type guifg='s:type 
	exe 'hi Underlined gui=underline'
endif


