filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set smartcase
set number

" F5 Toggles ignorecase setting
nmap <F5> :set ignorecase! ignorecase?

" Save as sudo
" cmap w!! w !sudo tee > /dev/null %
command! -nargs=1 Count %s/<args>//gn
cmap count Count
cmap lineEndings update <bar> e ++ff=dos <bar> setlocal ff=unix <bar> w
inoremap {<CR> {<CR>}<C-o>O

function! ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
nnoremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>

cmap loadrc so $MYVIMRC