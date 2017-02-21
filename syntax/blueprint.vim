" Vim syntax file
" Language: Blueprint
" Maintainer: Johan Egneblad
" Latest Revision: Fri, Feb 17, 2017 11:49:59 AM

if exists("b:current_syntax")
  finish
endif

syn keyword transactionControl Begin End
syn match entryName "^\([A-Za-z0-9]\+\)\s"
syn keyword ones T F N

" Try to make a date time thing
syn match dateTime '\d\{4\}-\d\{2\}-\d\{2\}T\d\{2\}:\d\{2\}:\d\{2\}'
syn match dateTime '\d\{4\}-\d\{2\}-\d\{2\}T\d\{2\}:\d\{2\}:\d\{2\}Z'
syn match dateTime '\d\{4\}-\d\{2\}-\d\{2\}T\d\{2\}:\d\{2\}:\d\{2\}[-+]\d\{4\}'

let b:current_syntax = "blueprint"

hi def link transactionControl Comment
hi def link entryName Statement
hi def link ones Keyword
hi def link dateTime Number
