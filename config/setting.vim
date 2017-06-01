"
" author: Ratan Sunder Parai
" email : ratanparai (at) gmail (dot) com

" show line numbers
set number
set relativenumber

" syntax highlighting
syntax on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" change leader key to spacebar
let g:mapleader=' '

" change buffer custom shortcut
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>k :bn<CR>

