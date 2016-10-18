" VIM Configuration - Phidelux <info@bornageek.com>

" Cancel compatibility with vi.
set nocompatible

"
" Environment
"

" Set utf8 as standard encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Add byte order marker to unicode files
set bomb

" Enable editing mode for binary files
set binary

" Enhance performance in terminal
set ttyfast

" Use Unix as the standard file type
set ffs=unix,dos,mac

"
" General
"

" Prevent vim from unnecessary redrawing
" (may prevent some plugins from working as expected)
" set lazyredraw

" Hide buffer file
set hidden

" Disable backup
set nobackup

" Disable swap files
set noswapfile

" Save session
nnoremap <leader>s :mksession<CR>

" Allow per folder configuration for vim
set exrc

" Disable shell execution in film (security)
set secure

" Eliminate delays on ESC
set timeoutlen=50

"
" Editor
"

" Backspace works as expected
set backspace=indent,eol,start

" Tabstop size
set tabstop=4

" Home many columns are inserted if tab is hit
set softtabstop=4

" Columns indented with reindent operations (<< and >>)
set shiftwidth=4

" Enable auto identation
set autoindent

" Prevent vim from inserrting tabs as spaces
set noexpandtab

" Show automatic breaks
set showbreak=↪\

" Visualize tabs, spaces and lineendings
set list!
set listchars=tab:→\ ,nbsp:␣,extends:⟩,precedes:⟨
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Configure coloring for these
hi SpecialKey ctermfg=66 guifg=#649A9A

" Enable autocomplete menu for commands
set wildmenu

" Enable bash like autocomplition
set wildmode=longest:full

" Ignore compiled files during autocomplete
set wildignore=*.o,*~,*.pyc

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

" Highlight last inserted text
nnoremap gV `[v`]

"
" Keymappings and Shortcuts
"

" Ignore case in standard commands
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Toggle auto-indenting for code paste
set pastetoggle=<F2>

" Toggle taglist (plugin required)
nnoremap <silent> <F8> :TlistToggle<CR>

" Toggle whitespace highlighting
nnoremap <silent> <F7> :ToggleWhitespace<CR>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

"
" Display
"

" Update window title
set title

" Set old title
set titleold="Terminal"

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
set scrolloff=3

" Show last entered command in bottom bar
"set showcmd

" Height of command bar
"set cmdheight=1

" Enable the toolbar
set guioptions=T

set statusline+=%F
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2

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
" Color Scheme
"

" Enable 256 color support
set t_Co=256

" Enable syntax highlighting
syntax enable

" Enable file specific behavior like highlighting and identation
filetype off
filetype plugin on
filetype plugin indent on

" Set the color scheme
colorscheme happy_hacking

" Set editor font to DejaVu Sans Mono 10
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

"
" Beep
"

" Disable bell
set noeb vb t_vb=

"
" Autocmd Rules
"

" Do syntax highlight syncing from start
augroup vimrc-sync-fromstart
	autocmd!
	autocmd BufEnter * :syntax sync fromstart
augroup END

" Remember cursor position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

set autoread

"
" Vim Plugins
"

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle is short for Vim bundle and is a Vim plugin manager.
" Let Vundle manage Vundle (required).
Plugin 'VundleVim/Vundle.vim'

" happy_hacking: Dark theme by Yorick Peterse
Plugin 'YorickPeterse/happy_hacking.vim'

" taglist: Source code browser for the Vim editor
Plugin 'taglist.vim'

" vim-fugitive: Issue git commands from vim and show branch in vim-airline
Plugin 'tpope/vim-fugitive'

" vim-airline: Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-better-whitespace: Highlight spaces at line end
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

"
" Vim Better Whitespace
"

" Highlight extra spaces at end of line
highlight ExtraWhitespace ctermbg=red

" Needed to turn on whitespace highlighting on start
autocmd VimEnter * DisableWhitespace
autocmd VimEnter * EnableWhitespace

" Automatically trim whitespaces on save
autocmd BufWritePre * StripWhitespace

"
" Vim Airline
"

" Enable airline powerline font
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_left_sep          = '▶'
	let g:airline_left_alt_sep      = '»'
	let g:airline_right_sep         = '◀'
	let g:airline_right_alt_sep     = '«'
	let g:airline#extensions#branch#prefix     = '⤴'
	let g:airline#extensions#readonly#symbol   = '⊘'
	let g:airline#extensions#linecolumn#prefix = '¶'
	let g:airline#extensions#paste#symbol      = 'ρ'
	let g:airline_symbols.linenr    = ' ' " '␊'
	let g:airline_symbols.branch    = '⎇'
	let g:airline_symbols.paste     = 'ρ'
	let g:airline_symbols.paste     = 'Þ'
	let g:airline_symbols.paste     = '∥'
	let g:airline_symbols.whitespace =  'Ξ'
else
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep = ''

	" powerline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ' ' " ''
endif
