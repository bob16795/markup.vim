" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Kevin Lauder
" Latest Revision: 26 April 2008

if exists("b:current_syntax")
  finish
endif

syn match muEmph "_.*_"
syn match muEmph "\*.*\*"
syn match muBold "__.*__"
syn match muBold "\*\*.*\*\*"
syn keyword muTodo contained TODO FIXME XXX NOTE
syn keyword muTagName contained PRS PRP CPT LNK PRT CENTER LEFT INDENT JUST UNJUST NINDENT HANGING RIGHT PAG PAGW PAGH LIN LINE VBRK LINEBR COLBR IDX IF ENDIF COL
syn match muTagProp contained "()[a-zA-Z]*()" 
syn match muTagSymbol contained ":[a-zA-Z0-9 \-()/\.,;]*" contains=muTagProp 
syn keyword muInc contained Inc
syn match muComment "!.*$" contains=muTodo,muInc
syn match muHeading "##\=#\=.*$"
syn region muCode start="^```$" end="^```$" fold transparent
syn match muPropVar "\s*\w\+\s*" contained
syn match muPropCond "^!\=\s*\w\+\s*|" contained
syn match muPropValue ":\s*.*$" contained
syn region muProps start="^---$" end="^---$" fold transparent contains=muPropCond,muPropVar,muPropValue
syn region muTag start="<" end=">" transparent contains=muTagName,muTagSymbol
syn region muEquation start="\$\$" end="\$\$" fold

hi def link muTodo      Todo
hi def link muBold      String
hi def link muEmph      String
hi def link muInc       SpecialComment
hi def link muTagName   Conditional
hi def link muTagSymbol Function
hi def link muTagProp   Float
hi def link muComment   Comment
hi def link muProps     Comment
hi def link muPropCond  Conditional
hi def link muPropVar   Delimiter
hi def link muPropValue Constant
hi def link muTag       Tag
hi def link muHeading   Float
