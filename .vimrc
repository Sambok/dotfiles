set nocompatible
filetype off
set t_Co=256
set relativenumber
set number
set cursorline
set cursorcolumn
set mouse=a

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax
Plugin 'scrooloose/syntastic'

" Colorscheme
Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'

" Indentation
Plugin 'yggdroot/indentline'

" File navigation
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

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
syntax on
color dracula
filetype plugin indent on
set laststatus=2

" Settings
" ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

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

" Airline tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = "|"

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" CtrlP
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,*/.git/*
