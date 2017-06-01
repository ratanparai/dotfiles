set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/plugins/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/plugins/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Here are my custom plugins
"""""""""""""""""""""""""""""""""

" Themes have moved to another repository so need two plugins for
" airline to work
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 

" Autocomplete plugin YCM
Plugin 'Valloric/YouCompleteMe'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plugin 'airblade/vim-gitgutter'

" fugitive.vim: a Git wrapper so awesome
" Show branch name in bottom status bar
Plugin 'tpope/vim-fugitive'

" EditorConfig helps developers define and maintain consistent coding styles
" between different editors and IDEs 
Plugin 'editorconfig/editorconfig-vim'

" Asynchronous Lint Engine
Plugin 'w0rp/ale'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'kien/ctrlp.vim'

" NERDTree and tabs together in Vim, painlessly
Plugin 'jistr/vim-nerdtree-tabs'

" Docker syntax file and snippets
Plugin 'ekalinin/Dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
