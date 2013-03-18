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

" always show statusline
set laststatus=2

" clean statusline
set statusline=""

" get modified flag
set statusline+=%m
" get filename
" set statusline+=%(\ %f%)
" get current tag from tag list
" display tag list only if tag list window is shown
set statusline+=%{(exists('loaded_taglist')&&bufwinnr(g:TagList_title)!=-1)?\"\ [\".Tlist_Get_Tag_Prototype_By_Line(expand('%'),line('.')).\"]\ \":'no\ tags\ '}
" display parsing error
set statusline+=%{\ SyntasticStatuslineFlag()}
" get [RO] flag
set statusline+=%(\ %r%)
" seperate between right- and left-aligned
set statusline+=%=
" get file encoding
set statusline+=%{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\"}
" get filetype
set statusline+=%(\ %*%y%*%)
" get hex and dec ascii values
set statusline+=%(\ 0x%-3B\|%-3b\ %-3l,%-3c\ %P%)

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
" use crtl+f for toggle NERDTree
map <silent> <c-f> :NERDTreeToggle<cr>

" hide matched patterns with ctrl-l
map <silent> <c-l> :silent nohl<cr>

" use crtl+n for new tab
map <silent> <c-n> :tabnew<cr>

" use crtl+t for toggle Taglist
map <silent> <c-t> :TlistToggle<cr>

" use crtl+w for close tab
map <silent> <c-w> :tabclose<cr>

" toggle Taglist tab
nnoremap <silent> <F4> :TlistToggle<CR><CR>

" toggle NERDTree tab
nnoremap <silent> <F5> :NERDTreeToggle<CR><CR>

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
" position nerd tree right - since Treelist is on left side
let NERDTreeWinPos = 'right'
" use a smaller tab size
let NERDTreeWinSize = 25

" taglist http://www.vim.org/scripts/script.php?script_id=273
" exit vi even taglist is open
let Tlist_Exit_OnlyWindow = 1
" close fold in taglist
let Tlist_File_Fold_Auto_Close = 1
" automatically update the taglist window to display tags for newly edited files
let Tlist_Auto_Update = 1
" automatically highlight the current tag
let Tlist_Auto_Highlight_Tag = 1
" sort taglist by names
let Tlist_Sort_Type = "name"
" use smaller Tlist width
let Tlist_WinWidth = 25
