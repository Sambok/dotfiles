set nocompatible
filetype off
set t_Co=256

set number
set cursorline
set cursorcolumn
set mouse=a

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dadbod'

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax
Plugin 'scrooloose/syntastic'

" Colorscheme
Plugin 'dracula/vim'
Plugin 'junegunn/seoul256.vim'

" Indentation
Plugin 'yggdroot/indentline'

" File navigation
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'

" Languages
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'gregsexton/matchtag'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'keith/rspec.vim'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-haml'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'
Plugin 'JuliaEditorSupport/julia-vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Status Line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Emmet
Plugin 'mattn/emmet-vim'

" Distraction Free 
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

call vundle#end()
syntax on
color dracula 
filetype plugin indent on
set laststatus=2

"Settings
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

" Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  color seoul256-light 
  set background=light
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  color dracula
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
