"
" author: Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com
"

" unicode
set encoding=utf-8

" change leader key to comma
let mapleader=" "

" wrap end of line
set wrap

" show line numbers
set number
set relativenumber

" syntax highlighting
syntax on
" set background=dark
" set t_Co=256

" indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

" search
set showmatch
set smartcase
set hlsearch
set incsearch

" copy/pase
" set paste
set clipboard=unnamed

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

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
