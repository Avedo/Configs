" NeoVim Configuratin - Phidelux <info@bornageek.com>

"
" Plugins
"

call plug#begin('~/.nvim/plugged')

" Color scheme
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" Status bar
Plug 'vim-airline/vim-airline'

" Code linter
Plug 'neomake/neomake'

" Formatting
Plug 'sbdchd/neoformat'

" Commenter
Plug 'tpope/vim-commentary'

" Fuzzy searching for opening files
Plug 'ctrlpvim/ctrlp.vim'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Closes html/xml tags after typing </
Plug 'docunext/closetag.vim'

" Git commands inside vim
Plug 'tpope/vim-fugitive'

" Automatic indentation
Plug 'tpope/vim-sleuth'

" Show identation guides
"Plug 'Yggdroot/indentLine'

" Show a git diff n the gutter
Plug 'airblade/vim-gitgutter'

" Code Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" When searching show 'At match #N out of M matches'
Plug 'vim-scripts/IndexedSearch'

" Syntax for jekyll markdown with front matter
Plug 'PProvost/vim-markdown-jekyll'

" Syntax for c++11 with chai script support
Plug 'ChaiScript/vim-cpp'

" Syntax and more for bitbake
Plug 'kergoth/vim-bitbake'

call plug#end()

"
" Editor
"

" Backspace works as expected
set backspace=indent,eol,start  

" Tabstop size
set tabstop=4

" How many columns are inserted if tab is hit
set softtabstop=4

" Columns indented with reindent operations (<< and >>)
set shiftwidth=4

" Prevent vim from inserrting tabs as spaces
set noexpandtab

" Show automatic breaks
set showbreak=↪\

" Visualize tabs, spaces and lineendings
"set listchars=tab:»\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set lcs=tab:→\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨
set list

" Configure coloring for these
hi SpecialKey ctermfg=66 guifg=#649A9A

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" Limit foldening to max 10
set foldnestmax=10

" Space open/closes folds
nnoremap <space> za

" Fold based on indent level
set foldmethod=indent

" Highlight matching brackets
set showmatch

" Copy to system clipboard when you yank
set clipboard=unnamedplus

"
" Keybindings
"

" Escape terminal mode using escape
tnoremap <Esc> <C-\><C-n>

"
" Search
"

" Ignore case in searches
set ignorecase

" Switch to case sensitive if uppercase letters in search term
set smartcase

" Highlight results while typing
set incsearch

" Highlight search results
set hlsearch

" Allow regular expressions in search terms
set magic

" Keep old matches until running new command or :nohlsearch
nnoremap <leader><space> :nohlsearch<CR>

"
" Display
"

" Update window title
set title

" Set old title
set titleold="nvim"

" Set title string
set titlestring=%F

" Display line numbers
set number

" Highlight current line
set cursorline

" Highlight column 80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" Display cursor position
set ruler

" Wrap long lines
set wrap

" Display at least 3 lines around cursor
set scrolloff=5

" Always display the status line, even if only one window is displayed
set laststatus=2

" Show last entered command in bottom bar
" set showcmd

" Height of command bar
"set cmdheight=1

"
" Color Scheme
"

" Set the color scheme
"set background=dark
"colorscheme onedark
"colorscheme happy_hacking
"set background=light
"let g:gruvbox_contrast_light="hard"
"let g:gruvbox_italic=1
"let g:gruvbox_invert_signs=0
"let g:gruvbox_improved_strings=0
"let g:gruvbox_improved_warnings=1
"let g:gruvbox_undercurl=1
"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox

colorscheme neodark
let g:neodark#use_256color = 1
let g:neodark#background = '#2020FF'

" Set editor font to DejaVu Sans Mono 10
set guifont=DejaVu\ Sans\ Mono\ 10

"
" Beep
"

" Disable bell
set noeb vb t_vb=

"
" Plugins
"

set signcolumn="yes"

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'neodark'

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
