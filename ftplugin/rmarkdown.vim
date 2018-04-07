" vim-rmarkdown
"
" Maintainer: Karl Yngve Lervåg
" Email:      karl.yngve@gmail.com
"

if exists('b:did_ftplugin_rmarkdown')
  finish
endif
let b:did_ftplugin_rmarkdown = 1

command! -buffer -bang -nargs=* 
      \ -complete=custom,rmarkdown#command#complete 
      \ RMarkdown call rmarkdown#command#call('<bang>', '<args>')
