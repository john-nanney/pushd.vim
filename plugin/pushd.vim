
" pushd.vim
" Author: John Nanney
" License: Public domain

if exists("g:loaded_pushd")
    finish
endif
let g:loaded_pushd = 1

let s:dir_stack = []

function Pushd(...)
    if exists("a:1")
        if a:1 != getcwd()
            call insert(s:dir_stack, getcwd())
            silent! exec ":chdir" a:1
        endif
    else
        if $HOME != getcwd()
            call insert(s:dir_stack, getcwd())
            silent! exec ":chdir" $HOME
        endif
    endif
    pwd
endfunction

function Popd()
    if len(s:dir_stack)
        silent! exec ":chdir" get(s:dir_stack, 0)
        call remove(s:dir_stack, 0)
    endif
    pwd
endfunction

function Dirs()
    if len(s:dir_stack)
        " let l:counter = 0
        for l:counter in range(len(s:dir_stack) - 1, 0, -1)
            echo get(s:dir_stack, l:counter)
        endfor
    endif
endfunction

command! -nargs=* -complete=dir Pushd call Pushd(<f-args>)
command! -nargs=0 Popd call Popd()
command! -nargs=0 Dirs call Dirs()

cabbrev pushd Pushd
cabbrev popd Popd
cabbrev dirs Dirs
