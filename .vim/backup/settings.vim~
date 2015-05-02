"Put your custom Vim configuration here

"Better command completion
"set wildmenu
"set wildmode=list:longest

"show current line

set encoding=utf8
set term=$TERM										" Make arrow and other keys work

"//Display
set background=dark
set cursorline
syntax on
set ruler											" Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)	" A ruler on steroids
set showmatch										" Show matching brackets/parenthesis
set scrolloff=30									" Minimum lines to keep above and below cursor
set list
set listchars=tab:⠤\ ,trail:♪,extends:#,nbsp:." Highlight problematic whitespace
"set colorcolumn=80
set nowrap

" Color
colorscheme solarized

"set nu												" Show line number
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"//mouse config
set mouse=a											" Use mouse
set mousehide										" Hide mouse while typing
"//keyboard config
set virtualedit=onemore								" Allow for cursor beyond last character

"//other
set history=1000									" History up to 1000 (default: 20)
set ignorecase										" Ignore case sensitive on search
set smartcase										" Smartcase search
filetype on											" Detect file type
set showcmd
set showmode										" Display current mode
set ai												" Auto indent
set si												" Smart indent
set wildmenu										" Better comment completion
set backspace=eol,start,indent						" Backspace
set backup											" Keep ackup files
set backupdir=~/.vim/backup							" Backup files directory
set dir=~/.vim/backup								" Swap files directory

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"folding settings
set foldmethod=indent								" Fold based on indent
set foldnestmax=10									" Deepest fold is 10 levels
set nofoldenable									" Dont fold by default
set foldlevel=1										" this is just what i use

" tags for autoindent
set tags=~/.vim/tags/tags
