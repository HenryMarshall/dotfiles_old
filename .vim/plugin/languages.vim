if has("autocmd")
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Indentation rules
  autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType elm setlocal ts=4 sts=4 sw=4 expandtab

  autocmd FileType javascript setlocal backupcopy=yes
endif
