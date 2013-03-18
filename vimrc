" load bundle manager
filetype off
execute pathogen#infect()

" enable syntax
syntax on

" set linenumbers
set number

" set filetype detection on
filetype on
filetype plugin on
filetype indent on

" nice indention
set autoindent
set smartindent

" use spaces instead of tabs
set tabstop=4

" convert all tabs typed to spaces
set expandtab

" indent/outdent by four columns
set shiftwidth=4
set softtabstop=4

" Indent/outdent to nearest tabstop
set shiftround

" colorize search pattern
set hlsearch

" autofocus search pattern
set incsearch

" search ci in general, only cs when in camel-case
set ignorecase
set smartcase

" sets vim not vi compatible
set nocompatible

" lets you switch buffer without saving
set hidden

" do not redraw while running macros (much faster) (LazyRedraw)
set lazyredraw

" follow mouse focus
set mousefocus

" split new window below of us
set splitbelow

" visual bell
set visualbell

" smaller line high, less spaces
set lsp=0

" minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" minimal number of screen columns to keep to the left and to the right of the cursor
set sidescrolloff=3

" folding stuff:
" fold only sub foldings
set foldlevelstart=1
" do not fold less than 10 lines
set foldminlines=5

" set 256 color mode
set t_Co=256

" set generally dark mode
set background=dark

" use zenburn colorscheme
colorscheme zenburn

" set spaces as '.'
set list
set listchars=tab:\|·,trail:·

" highlight spaces at the end of lines
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" set many undos
set undolevels=1000

" get more history
set history=1000

" central backup dir
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
let g:netrw_home=expand("~/.vim/tmp")

set textwidth=80
set colorcolumn=100
highlight ColorColumn ctermbg=236 guibg=#2e3330

""""""""""""""""
" auto actions
""""""""""""""""
" save on focus lost
au FocusLost * :wa

""""""""""""""""
" key bindings "
""""""""""""""""
" hide matched patterns with ctrl-l
map <silent> <c-l> :silent nohl<cr>

" use crtl+n for new tab
map <silent> <c-n> :tabnew<cr>

" use crtl+t for toggle NERDTree
map <silent> <c-t> :NERDTreeToggle<cr>

" use crtl+w for close tab
map <silent> <c-w> :tabclose<cr>

" toggle paste mode
set pastetoggle=<F8>

""""""""""""""""
" plugins
""""""""""""""""
" GitGutter https://github.com/airblade/vim-gitgutter
" enable plugin on default
let g:gitgutter_enabled = 1
" highlight (background) changed lines
let g:gitgutter_highlight_lines = 1

" NERDTree https://github.com/scrooloose/nerdtree
let NERDTreeWinPos = 'right'
