source $HOME/.vim/funciones/templateInit.vim


syntax enable

filetype plugin indent on

set background=dark
colorscheme retrobox


set path-=**
set path+=**
set path-=/usr/include


set cursorline
set expandtab
set shiftwidth=2
set softtabstop=2



set nobackup
set nowritebackup
set noswapfile


autocmd BufEnter *.js if &filetype == 'javascript' | call Js() | endif
autocmd BufEnter *.html if &filetype == 'html' | call Html() | endif
autocmd BufEnter *.css if &filetype == 'css' | call Css() | endif
autocmd BufEnter *.php if &filetype == 'php' | call Php() | endif



"copy
vnoremap <c-C> "+y



" Define la autocmd para archivos HTML
autocmd BufNewFile,BufRead *.html execute "read $HOME/.vim/template/.web"




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
inoremap Html5 <esc>:call Template("web")<cr>
iab wc Wc
inoremap Wc <esc>:call Template("wcom")<cr>

iab section Section
inoremap Section <esc>:call Tag("section")<cr>
iab div Div
inoremap Div <esc>:call Tag("div")<cr>
iab header Header
inoremap Header <esc>:call Tag("header")<cr>
iab nav. Nav
inoremap Nav <esc>:call Tagclass("nav")<cr>
iab aside. Aside
inoremap Aside <esc>:call Tagblock("aside")<cr>
