set cursorline
set cursorcolumn
set colorcolumn=81
highlight ColorColumn ctermbg=18

set listchars=tab:▸\ ,eol:¬

" Detect the syntax highlighting under the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:markdown_fenced_languages = ['javascript']
