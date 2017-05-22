" Change Vim Snippets (namespace consistent with bindings.vim)
nnoremap <leader>cvs :UltiSnipsEdit<cr>

au BufRead,BufNewFile *.spec.js set filetype=mocha.javascript
au BufRead,BufNewFile *.test.js set filetype=ava.javascript

let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"
