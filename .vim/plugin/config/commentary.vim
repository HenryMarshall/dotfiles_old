" <C-_> is the binding for <C-/>. tty :-/
vmap <C-_> gc
nmap <C-_> gcc
imap <C-_> <Esc>gcc

autocmd FileType elm setlocal commentstring=--\ %s
