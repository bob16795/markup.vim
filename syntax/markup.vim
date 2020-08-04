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
syn keyword muInc contained Inc
syn match muComment "!.*$" contains=muTodo,muInc
syn match muPropCond "^!\=\is*\w\+\s*|" contained
syn match muPropVar "\s*\w\+\s*" contained
syn match muPropValue ":\s*.*$" contained
syn region muProps start="---$" end="---$" fold transparent contains=muPropCond,muPropVar,muPropValue
syn region muTag start="<" end=">"

hi def link muTodo      Todo
hi def link muBold      String
hi def link muEmph      String
hi def link muInc       SpecialComment
hi def link muComment   Comment
hi def link muProps     Comment
hi def link muPropCond  Conditional
hi def link muPropVar   Delimiter
hi def link muPropValue Constant
hi def link muTag       Tag
