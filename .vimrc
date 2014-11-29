filetype on
syntax on

set nu
set ff=dos
" set nowrap
set mouse=n
set autoread
set autochdir
set laststatus=2
set smartcase
set hlsearch incsearch
set showmatch
set cindent autoindent smartindent

set dictionary+=/usr/share/dict/words

autocmd FileType tex              :setlocal spell spelllang=en_gb

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType ruby,python      let b:comment_leader = '# '
autocmd FileType sh,desktop       let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
nnoremap <Leader>s :%s/\(\<<C-r><C-w>\>\)/\1/g
noremap <silent> <C-c> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <C-u> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Autocompletion Programmer
filetype plugin on
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType c setl ofu=ccomplete#CompleteCpp
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
au FileType cpp set omnifunc=cppcomplete#CompleteCPP

map <F5> :e<CR>

map <F6> :setlocal nospell<CR>
map <F7> :setlocal spell spelllang=en_gb<CR>

map <F8> :diffthis<CR>
map <F9> :diffoff<CR>

nnoremap tn :tabnew<CR>
nnoremap to :tabf ./<CR>
nnoremap tc :tabclose<CR>
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tv :vs ./<CR>
