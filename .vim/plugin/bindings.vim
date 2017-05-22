let mapleader = "\<space>"
let maplocalleader = "-"

" Disable Unused bindings
nnoremap <c-w><c-w> <nop>
nnoremap <c-w><c-h> <nop>
nnoremap <c-w><c-j> <nop>
nnoremap <c-w><c-k> <nop>
nnoremap <c-w><c-l> <nop>

" ##################
" ### COPY-PASTE ###
" ##################

" System clipboard integration
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "_d"+p
vnoremap <leader>P "_d"+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$
nnoremap <leader>yy "+yy

" `Y` should behave like the rest of the capitals
nnoremap Y y$
" Pasting text should never update your buffers
vnoremap p "_dp
" Reselect pasted text
nnoremap <leader>v V`]


" #################
" ### REGISTERS ###
" #################

" `<Del>` and `<BS>` all write to the null register
nnoremap <Del> "_x
nnoremap <BS> "_X

" `c` should write to the null registers
nnoremap c "_c
nnoremap C "_C
vnoremap c "_c

" `x` should behave like d, but write to the null register
nnoremap x "_d
nnoremap X "_D
vnoremap x "_d
vnoremap X "_D
nnoremap xx "_dd
nnoremap <leader><Del> "xx"xp


" ############
" ### MISC ###
" ############

" Moving around
nnoremap <buffer> j gj
nnoremap <buffer> k gk
nnoremap <buffer> <silent> 0 g0
nnoremap <buffer> <silent> $ g$
nnoremap <leader>j :lnext<cr>
nnoremap <leader>k :lprevious<cr>

" Normal Regex
nnoremap / /\v
vnoremap / /\v
nnoremap <leader>/ :noh<cr>

" Insert \n at the current position
nnoremap <Return> i<CR><Esc>k$
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
" Append `,`
nnoremap <leader>, mzA,<Esc>`z
" Append `;`
nnoremap <leader>. mzA;<Esc>`z

" Markdown headings
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

" Line wrapping
nnoremap <leader>q gqip

" Tab Navigation
nnoremap <right> gt
nnoremap <left> gT
nnoremap gt :echo "use \<left\>"<Return>
nnoremap gT :echo "use \<right\>"<Return>

" Buffer Navigation
nnoremap <up> :bprevious<Return>
nnoremap <down> :bnext<Return>

" Capitalize
inoremap <c-u> <esc>gUiwea
nnoremap <c-u> gUiwe
nnoremap <leader>u gul
nnoremap <leader>U gUl

" Edit config files
nnoremap <leader>cc :source %<cr>ZZ
nnoremap <leader>cvr :vsplit $MYVIMRC<cr>
nnoremap <leader>cvb :vsplit $HOME/.vim/plugin/bindings.vim<cr>
nnoremap <leader>cba :vsplit $HOME/.bash_aliases<cr>

nnoremap <leader>w :w<cr>

" Misc
" Make invisible characters visible
nnoremap <leader>i :set list!<CR>

" Operate on next/previous blocks
" Tip: when defining "operator-pending" bindings, end with visual selection
"      or on the last character you want effected (with the inital cursor
"      defining the total range)
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il} :<c-u>normal! F}vi{<cr>

" Failed attempt to alias `vert help` -- doesn't respect subsequest args
" command! -nargs=* VH vert help

