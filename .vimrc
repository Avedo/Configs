" Colors -------------------------------------

" The base color scheme.
colorscheme jellybeans

" Enable syntax processing.
syntax enable

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

" Highlight the current line.
set cursorline

" Load filetype specific ident files, eg. for python.
filetype indent on

" Enable a visual autocomplete menu for commands.
set wildmenu

" Prevent vim from unnecessary redrawing.
set lazyredraw

" Highlight matching brackets.
set showmatch

" Searching ----------------------------------

" Already search as characters are entered.
set incsearch

" Highlight search matches.
set hlsearch

" Keep old matches until running new command or :nohlsearch.
nnoremap <leader><space> :nohlsearch<CR>

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
