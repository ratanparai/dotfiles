"
" author: Ratan Sunder Parai
" email  : ratanparai (at) gmail (dot) com
"

" [> Airline <]

" status line always opened
" bottom of the window
set laststatus=2

" tab status
let g:airline#extensions#tabline#enabled = 1

"  powerline font
" let g:airline_powerline_fonts=1

" colorscheme
let g:solarized_italic=0
if has('gui_running')
    set background=light
    colorscheme solarized 
else
    set background=dark
    colorscheme luna
endif
