" vim-rmarkdown
"
" Maintainer: Karl Yngve Lervåg
" Email:      karl.yngve@gmail.com
"

if !exists('b:current_syntax')
  let b:current_syntax = 'tex'
elseif b:current_syntax !=# 'tex'
  finish
endif

runtime! syntax/markdown.vim

if exists('b:current_syntax')
  unlet b:current_syntax
endif

syntax region mdInlineR
      \ matchgroup=Operator
      \ start=/`r\s/
      \ end=/`/
      \ contains=@R concealends

let b:current_syntax = 'rmarkdown'
