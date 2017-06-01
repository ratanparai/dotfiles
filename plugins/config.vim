"
" author: Ratan Sunder Parai
" email  : ratanparai (at) gmail (dot) com
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> Airline <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" status line always opened
" bottom of the window
set laststatus=2

" tab status
let g:airline#extensions#tabline#enabled = 1

"  powerline font
let g:airline_powerline_fonts=1

" set macvim font to source powerline
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" colorscheme
" let g:solarized_italic=0
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    " fix for terminal color
    let g:solarized_termcolors=256

    set background=dark
    colorscheme solarized
endif

" Highlight trailing whitespace
let g:solarized_hitrail = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> ALELinter <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_section_error = '%{ALEGetStatusLine()}'
" let g:ale_statusline_format = ['W %d', '⚠ %d', '⬥ ok']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> EditorConfig <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" to avoid issues with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> UltiSnips <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   [> NERDTree <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto start NERDTree when vim start
" autocmd vimenter * NERDTree

let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=1


" nerdtree window resize
let g:NERDTreeWinSize = 20

" show hidden files
" let g:NERDTreeShowHidden=1

" single click to open nodes
" let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$']
nnoremap <c-n> :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> ctrlp.vim <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       [> NERDTreeTabs <]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto open nerd tree on startup
" let g:nerdtree_tabs_open_on_gui_startup = 1

" Focus in the main content windows
let g:nerdtree_tabs_focus_on_files = 1

" To run NERDTreeTabs on console vim startup
" let g:nerdtree_tabs_open_on_console_startup=1
