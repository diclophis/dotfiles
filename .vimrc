""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GLOBAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" VIM, not VI
set nocompatible
 
" General appearance and behaviour
" filetype plugin indent on
syntax on
set visualbell t_vb=
set noerrorbells
set ruler
set showcmd
set showmatch
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start
set nowrap
set linebreak
set lazyredraw
 
set nomodeline
 
" MOUSE with VIM ! (YES)
" set mouse=a
" set ttymouse=xterm2
set scrolloff=1
 
" Indentation options
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set virtualedit=block
set equalprg=
 
" Search options
" set incsearch
set hlsearch
set ignorecase

" Fold options
" set foldmethod=indent

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \ set ft=markdown |
      \ else |
      \ setf markdown |
      \ endif

au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.less set filetype=scss
au BufNewFile,BufRead *.inventory,*.ini,*/.hgrc,*/.hg/hgrc setf ini
au BufNewFile,BufRead *.fsh,*.vsh set syntax=glsl 
au BufRead,BufNewFile Detectivefile set filetype=ruby
au BufRead,BufNewFile *.fs set syntax=glsl

set viminfo='50,<1000,s100,h

set maxmempattern=5000

augroup ft_go
    au!

    au Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
    au Filetype go setlocal listchars+=tab:\ \
augroup END

autocmd FileType make setlocal noexpandtab

" set laststatus=2
" set statusline+=%F
