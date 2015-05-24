" Colors -------------------------------------

" The base color scheme.
colorscheme jellybeans

" Enable syntax processing.
syntax enable

" Environment --------------------------------

" Set utf8 as standard encoding.
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Spaces & Tabs ------------------------------

" Number of visual spaces per TAB.
set tabstop=4

" Number of spaces in tab when editing.
set softtabstop=4

" Insert tabs as spaces.
set expandtab

" UI Layout ----------------------------------

" Show line numbers.
set number

" Show the last entered command in bottom bar.
set showcmd

" Height of the command bar.
set cmdheight=1

" Highlight the current line.
set cursorline

" Load filetype specific ident files, eg. for python.
filetype indent on

" Enable a visual autocomplete menu for commands.
set wildmenu

" Ignore compiled files during autocomplete.
set wildignore=*.o,*~,*.pyc

" Prevent vim from unnecessary redrawing.
set lazyredraw

" Highlight matching brackets.
set showmatch

" Searching ----------------------------------

" Ignore case when searching.
set ignorecase

" When searching try to be smart about cases. 
set smartcase

" Already search as characters are entered.
set incsearch

" Highlight search matches.
set hlsearch

" Keep old matches until running new command or :nohlsearch.
nnoremap <leader><space> :nohlsearch<CR>

" Allow regular expressions in search terms.
set magic

" Folding ------------------------------------

" Enable folding.
set foldenable

" Open most folds by default.
set foldlevelstart=10

" Limit foldening to max 10.
set foldnestmax=10

" Space open/closes folds.
nnoremap <space> za

" Fold based on indent level.
set foldmethod=indent

" Movement -----------------------------------

" Move vertically by visual line.
nnoremap j gj
nnoremap k gk

" Highlight last inserted text.
nnoremap gV `[v`]

" Leader Shortcuts ---------------------------

" Save session.
nnoremap <leader>s :mksession<CR>
