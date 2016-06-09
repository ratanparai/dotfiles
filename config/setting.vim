"
" author: Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com
"

" unicode
set encoding=utf-8

" change leader key to comma
let g:mapleader=" "

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

" change buffer custom shortcut
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>k :bn<CR>

" keep 5 line while scrolling
set scrolloff=5

" Set gui opetion for windows vim gui
set guioptions-=T "remove toolbar

" Start vim in maximized GUI mode
au GUIEnter * simalt ~x

" set persistant undo
set undodir=$HOME.'/vimfiles/undo'
set undofile

" set powerline font for gui
set guifont=Droid_Sans_Mono_for_Powerline:h10
