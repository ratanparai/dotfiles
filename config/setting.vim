" 
" author: Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com
" 

" unicode 
set encoding=utf-8

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
