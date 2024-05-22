source $HOME/.vim/funciones/templateInit.vim

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
let g:netrw_keepdir = 0
let g:netrw_winsize = 20
let g:netrw_banner = 0

set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
let g:netrw_liststyle = 4
"let g:netrw_winsize = 25
"let g:netrw_browse_split = 4
set splitbelow splitright

let g:netrw_banner = 0
"let g:netrw_preview = 1

"let g:netrw_alto = 1
"let g:netrw_splitbelow = 0
autocmd BufEnter *.js if &filetype == 'javascript' | call Js() | endif

"copy
vnoremap <c-C> "+y
inoremap <c-k> <c-x><c-k>
inoremap <c-l> <esc>la

nnoremap <space>h <c-w><c-h>
nnoremap <space>l <c-w><c-l>
nnoremap <space>k <c-w><c-k>
nnoremap <space>j <c-w><c-j>

nnoremap <F5> :lcd %:p:h<cr>

" Define la autocmd para archivos HTML
autocmd BufNewFile,BufRead *.html execute "read $HOME/.vim/template/.web"


let g:netrw_browsex_viewer= "firefox"


set statusline+=\ [№\ %{WindowNumber()}]✔\ %t\ ✘(№\ %n)


nnoremap ,f :<c-f>?
nnoremap ,h :bro ol<cr>
nnoremap ,q :qal!<cr>
nnoremap ,w :w<cr>


nnoremap ,1 <c-w>1<c-w>
nnoremap ,2 <c-w>2<c-w>
nnoremap ,3 <c-w>3<c-w>
nnoremap ,4 <c-w>4<c-w>
nnoremap ,5 <c-w>5<c-w>
nnoremap ,6 <c-w>6<c-w>
nnoremap ,7 <c-w>7<c-w>
nnoremap ,8 <c-w>8<c-w>
nnoremap ,9 <c-w>9<c-w>


function! Template(tipo)
    exec ":-1read /home/sosa/.vim/template/." . a:tipo
endfunction 

function! Tagblock(elemento)
  call append('.','<'.a:elemento.' class=""></'.a:elemento.'>')
  exec 'normal Jf<'
endfunction 
function! Tagreturn(elemento)
  return a:elemento
endfunction 
iab span Span
inoremap Span <<esc>:call Tagreturn("span")<cr>ihola

function! Tagclass(elemento)
  call append('.','<'.a:elemento.' class=""></'.a:elemento.'>')
  exec 'normal J2f"'
endfunction 

function! Tag(elemento)
  call append('.',"<".a:elemento."></".a:elemento.">")
  exec "normal Jf>a"
endfunction 
iab fun Function
inoremap Function <esc>:call Template("fun")<cr>
iab html5 Html5
