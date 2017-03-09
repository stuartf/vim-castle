syntax on

if &compatible
  set nocompatible
endif

if has('vim_starting')
  set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim
endif

set incsearch
set hlsearch
set ignorecase
set tabstop=2
set expandtab
set shiftwidth=2
set visualbell
set background=dark

call dein#begin(expand('~/.vim/dein/'))

call dein#add('Shougo/dein.vim')

call dein#add('tpope/vim-fugitive')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('bling/vim-airline')
call dein#add('mhinz/vim-signify')
call dein#add('majutsushi/tagbar')

filetype plugin indent on "required for dein
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete

call dein#end()

"airline doesn't show up until laststatus is 2 for some reason
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline_right_sep = '▜'
let g:airline_left_sep = '▙'
