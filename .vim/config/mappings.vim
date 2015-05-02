" launch plugin
nnoremap <C-u> :GundoToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-g> :Git add--interactive<CR>

" Keep cursor centered and wait for command to complete
"nnoremap <Up> <Up>zz
"nnoremap <Down> <Down>zz
"imap <Up> <Up><esc>zzi
"imap <Down> <Down><esc>zzi
"nmap k kzz
"nmap j jzz
set lazyredraw

" easy switch between buffers
nmap <C-h> <C-w><Left>
nmap <C-l> <C-w><Right>
nmap <C-j> <C-w><Down>
nmap <C-k> <C-w><Up>
nmap <C-=> <C-w><=>

" Reload .vimrc when reloading a file that might have changed
"nnoremap <C-r> :so $MYVIMRC<CR> :edit<CR>

" Edit c snippets
" let leader="\\"
" nmap <leader>v :vsp ~/.vim/bundle/snipmate.vim/snippets/c.snippets<CR>

" Syntastic
" nmap <C-e> :SyntasticToggleMode<CR>

"imap <Esc> <C-c>
