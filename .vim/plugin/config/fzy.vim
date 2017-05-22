" NOTE: fzy is a C application and must be installed manually. The following
" is the entirety of the required integration for vim (i.e., vundle doesn't
" handle this).
"
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("ag . -l -g ''", ":vs")<cr>
nnoremap <leader>t :call FzyCommand("ag . -l -g ''", ":e")<cr>

