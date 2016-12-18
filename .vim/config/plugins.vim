" Vundle Settings
filetype off

set laststatus=2	
set t_Co=256
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'kien/ctrlp.vim'
"Plugin 'msanders/snipmate.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/NERDTree'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tikhomirov/vim-glsl'
Plugin 'brgmnn/vim-opencl'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

filetype plugin indent on

" Syntastic settings
"let g:syntastic_check_on_open = 1
"let g:syntastic_c_auto_refresh_includes = 1
"let g:syntastic_c_include_dirs = [ 'libft/includes', 'inc', '../libft/includes' ]
"let g:syntastic_c_compiler_options = '-Wall -Wextra -Werror'
"let g:syntastic_auto_loc_list = 1

" ultisnips settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
map  sw <Plug>(easymotion-bd-w)
nmap sw <Plug>(easymotion-overwin-w)
