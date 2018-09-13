filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set smartcase
set number

set diffopt=filler,vertical

" F5 Toggles ignorecase setting
nmap <F5> :set ignorecase! ignorecase?

nnoremap <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

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

command -nargs=1 SetIndent set tabstop=<args> <bar> set shiftwidth=<args> <bar> set softtabstop=<args>
cmap setIndent SetIndent

cmap loadrc so $MYVIMRC

source ~/.vim/comments.vim
