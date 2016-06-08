" author: Ratan Sunder Parai
" email: ratanparai (at) gmail (dot) com

" Remove trailing spaces
" And two or more blankline. Only one blank line is acceptable
if has("autocmd")
    autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre *.js :call <SID>StripTwoOrMoreBlankLine()
endif

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" only keep single blankline and remove multipleblank line
nnoremap <silent> <F6> :call <SID>StripTwoOrMoreBlankLine()<CR>
function! <SID>StripTwoOrMoreBlankLine()
     " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    g/^\_$\n\_^$/d
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
