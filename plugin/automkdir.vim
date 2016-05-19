" automkdir.vim - Prompt to create missing directories
" Maintainer:   Andreas Bolka <a AT bolka DOT at>
" Version:      1.0
"
" Based on Damian Conway's "Conditionally autocreating non-existent
" directories" [1].
"
" [1]: http://www.ibm.com/developerworks/library/l-vim-script-5/#N1065C.

function! EnsureDirExists()
    let l:dir = expand("%:h")
    if !isdirectory(l:dir)
        if confirm("Directory '" . l:dir . "' doesn't exist.",
                 \ "&Create\n&Ignore") == 1
            try
                call mkdir(l:dir, 'p')
            catch
                echoerr "Failed to create '" . l:dir . "'!"
            endtry
        endif
    endif
endfunction

augroup AutoMkdir
    autocmd!
    autocmd BufWritePre,FileAppendPre,FileWritePre *
        \ :call EnsureDirExists()
augroup END
