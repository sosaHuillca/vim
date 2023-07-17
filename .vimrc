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
