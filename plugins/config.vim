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
let g:airline_powerline_fonts=1

" colorscheme
" let g:solarized_italic=0
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    set background=dark
    colorscheme luna
endif

" Highlight trailing whitespace
let g:solarized_hitrail = 1

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
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'

" [> vim-gitgutter <]
"
" set updatetime=250
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_realtime=0
let g:gitgutter_eager=0

" [> EditorConfig <]

" to avoid issues with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" [> Syntastic <]
" Syntax checkers
let g:syntastic_check_on_open=0 " diable syntax checking on file open to improve vim loading time
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump = 0 " diable auto jump to error for better autosave integration
let g:syntastic_vim_checkers = ['vimlint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" install pug-lint from cd using 'npm install -g pug-lint
let g:syntastic_pug_checkers = ['pug_lint']

" [> UltiSnips <]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" directory for my own Snippets
let g:UltiSnipsSnippetDir=$HOME.'/vimfiles/UltiSnips/'

" [> Omni function test >]
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" [> AutoSave plugin >]
" let g:auto_save = 1 " enable autosave
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_postsave_hook = 'TagsGenerate'  " this will run :TagsGenerate after each save
"


" [> vimtex <]
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
    \ 're!\\hyperref\[[^]]*',
    \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\(include(only)?|input){[^}]*',
    \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
    \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
    \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
    \ ]
