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
    set background=dark
    colorscheme solarized 
else
    set background=dark
    colorscheme luna
endif


" [> NERDTree <]

" autocmd vimenter * NERDTree

" nerdtree window resize
let g:NERDTreeWinSize = 20

" show hidden files
let g:NERDTreeShowHidden=1

" single click to open nodes
" let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$']
nnoremap <c-n> :NERDTreeToggle<cr>

" [> ctrlp.vim <]
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'

" [> vim-gitgutter <]
set updatetime=250
" let g:gitgutter_highlight_lines = 1
