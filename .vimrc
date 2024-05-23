syntax enable

filetype plugin indent on
set background=dark
colorscheme retrobox

set path-=**
set path+=**
set path-=/usr/include


set cursorline
set incsearch
set wildmenu


set expandtab
set shiftwidth=2
set softtabstop=2
set rnu

set splitbelow splitright

set nobackup
set nowritebackup
set noswapfile
set autoindent
set lazyredraw
set ttyfast
"configuracion
let g:netrw_keepdir = 1
let g:netrw_banner = 0

set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType c set omnifunc=ccomplete#Complete

let g:netrw_liststyle = 4
"let g:netrw_winsize = 25
"let g:netrw_browse_split = 4
set splitbelow splitright

let g:netrw_preview = 1

"let g:netrw_alto = 1
"let g:netrw_splitbelow = 0
source /$HOME/.config/vim/.vim/lenguajes/javascript.vim
autocmd BufEnter *.js if &filetype == 'javascript' | call Js() | endif
source /$HOME/.config/vim/.vim/lenguajes/css.vim
autocmd BufEnter *.css if &filetype == 'css' | call Css() | endif
source /$HOME/.config/vim/.vim/lenguajes/html.vim
autocmd BufEnter *.html if &filetype == 'html' | call Html() | endif
autocmd BufNewFile *.html if &filetype == 'html' | execute "-1read $HOME/.config/vim/.vim/template/.web" | exec "normal! 3jf>l" | exec "startinsert" | endif
"configurando :
noremap ; :
noremap : ;

"copy
vnoremap <c-C> "+y
"complete dictionary
inoremap <c-k> <c-x><c-k><c-p>
"next right insert
inoremap <c-l> <c-o>a

nnoremap <space>h <c-w><c-h>
nnoremap <space>l <c-w><c-l>
nnoremap <space>k <c-w><c-k>
nnoremap <space>j <c-w><c-j>

let size_max = 10
let size_min = 1
execute 'nnoremap <left> ' . size_max . '<c-w><'
execute 'nnoremap <right> ' . size_max . '<c-w>>'
execute 'nnoremap <up> ' . size_max . '<c-w>+'
execute 'nnoremap <down> ' . size_max . '<c-w>-'
execute 'nnoremap <c-left> ' . size_min . '<c-w><'
execute 'nnoremap <c-right> ' . size_min . '<c-w>>'
execute 'nnoremap <c-up> ' . size_min . '<c-w>+'
execute 'nnoremap <c-down> ' . size_min . '<c-w>-'

nnoremap <F5> :lcd %:p:h<cr>

" Define la autocmd para archivos HTML
"autocmd BufNewFile *.html execute "-1read $HOME/.config/vim/.vim/template/.web"


let g:netrw_browsex_viewer= "firefox"

source /$HOME/.config/vim/.vim/editor/numeroVentana.vim
set statusline=\ [№\ %{WindowNumber()}]✔\ %f\ ✘(№\ %n)


