set nocompatible
filetype off
set t_Co=256
syntax on
set number
colorscheme badwolf

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax
Plugin 'scrooloose/syntastic'

" Colorscheme
Plugin 'flazz/vim-colorschemes'

" Indentation
Plugin 'yggdroot/indentline'

" File navigation
Plugin 'scrooloose/nerdtree'

" Languages
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'gregsexton/matchtag'
Plugin 'keith/rspec.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-haml'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'

" Git
Plugin 'tpope/vim-fugitive'

" Lint

" Status Line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Emmet
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
set laststatus=2

" Settings
  " Tab settings
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2
set backspace=indent,eol,start
  " Disable Arrow Keys
    "in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
    "in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_ruby_checkers=["rubocop"]
