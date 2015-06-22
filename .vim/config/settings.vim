" Put your custom Vim configuration here

set encoding=utf8
set term=$TERM										" Make arrow and other keys work

" Display
set background=dark
set cursorline
syntax on
set ruler											" Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)	" A ruler on steroids
set showmatch										" Show matching brackets/parenthesis
set scrolloff=30									" Minimum lines to keep above and below cursor
set list
set listchars=tab:⠤\ ,trail:♪,extends:#,nbsp:.		" Highlight problematic whitespace
" Set colorcolumn=80								" Highlight when column > 80
set nowrap
set tabstop=4										" tabulation = 4 char

" Color
colorscheme solarized

" Set nu											" Show line number
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Command to load and update session
au VimEnter * nested :call LoadSession()
au VimLeave * :call UpdateSession()

" Mouse config
set mouse=a											" Use mouse
set mousehide										" Hide mouse while typing

" Keyboard config
set virtualedit=onemore								" Allow for cursor beyond last character

" Other
set history=1000									" History up to 1000 (default: 20)
set ignorecase										" Ignore case sensitive on search
set smartcase										" Smartcase search
set hlsearch										" Highlight the search
filetype on											" Detect file type
set showcmd
set showmode										" Display current mode
set ai												" Auto indent
set si												" Smart indent
set wildmenu										" Better comment completion
set wildmode=list:longest
set backspace=eol,start,indent						" Backspace
set backup											" Keep backup files
set backupdir=~/.vim/backup							" Backup files directory
set dir=~/.vim/backup								" Swap files directory

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Folding settings
set foldmethod=indent								" Fold based on indent
set foldnestmax=10									" Deepest fold is 10 levels
set nofoldenable									" Dont fold by default
set foldlevel=1										" this is just what i use

" Tags for autocompletion
set tags=~/.vim/tags/tags							" Directory to find tags used for autocompletion

" Persistent undo
set undofile
set undodir=~/.vim/undodir
