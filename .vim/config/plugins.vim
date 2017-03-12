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
Plugin 'vim-scripts/ShaderHighLight'
Plugin 'brgmnn/vim-opencl'
Plugin 'easymotion/vim-easymotion'
"Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

filetype plugin indent on

" ---- Syntastic
"let g:syntastic_check_on_open = 1
"let g:syntastic_c_auto_refresh_includes = 1
"let g:syntastic_c_include_dirs = [ 'libft/includes', 'inc', '../libft/includes' ]
"let g:syntastic_c_compiler_options = '-Wall -Wextra -Werror'
"let g:syntastic_auto_loc_list = 1

" ---- Ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ---- YouCompleteMe
" Disable the vertical bar on the left
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1

" ---- Easymotion
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
map  sw <Plug>(easymotion-bd-w)
nmap sw <Plug>(easymotion-overwin-w)

" ---- Ctrlp
"let g:ctrlp_working_path_mode = 'ra'
"
"" If a file is already open, open it again in a new pane instead of switching to the existing pane
""let g:ctrlp_switch_buffer = 'et'
"
"" Only look the file name
"let g:ctrlp_by_filename = 1
"
"let g:ctrlp_tabpage_position = 'c'
"
"" Exclude files and directories
"" Theses commands are unused if a ctrlp_user_command is define
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"
"" Use a custom file listing command:
""let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard |& egrep -v -i "\.(png|jpg|jpeg|gif|meta|prefab|fbx|asset|mat|anim|FBX|unity)$|node_modules"', 'find %s -type f']

" ---- Omnisharp
"augroup omnisharp_commands
"	autocmd!
"
"	"Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
""	autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
"
"	" Synchronous build (blocks Vim)
"	"autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
"	" Builds can also run asynchronously with vim-dispatch installed
"	autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
"	" automatic syntax check on events (TextChanged requires Vim 7.4)
"	"autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
"
"	" Automatically add new cs files to the nearest project on save
"	autocmd BufWritePost *.cs call OmniSharp#AddToProject()
"
"	"show type information automatically when the cursor stops moving
"	"autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"
"	"The following commands are contextual, based on the current cursor position.
"
"	autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
"	autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
"	autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
"	autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
"	autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
"	"finds members in the current buffer
"	autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
"	" cursor can be anywhere on the line containing an issue
"	autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
"	autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
"	autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
"	autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
"	"navigate up by method/property/field
"	autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
"	"navigate down by method/property/field
"	autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>
"
"augroup END
