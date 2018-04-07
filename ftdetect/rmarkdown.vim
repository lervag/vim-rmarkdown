augroup ftdetect
  autocmd! BufRead,BufNewFile *.Rmd  set filetype=rmarkdown
  autocmd! BufRead,BufNewFile *.Rpres  set filetype=rmarkdown
augroup END
