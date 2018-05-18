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

"call dein#add('Shougo/dein.vim')

call dein#add('tpope/vim-fugitive')
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('w0rp/ale')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('bling/vim-airline')
call dein#add('mhinz/vim-signify')
call dein#add('xolox/vim-misc')
call dein#add('xolox/vim-easytags')
call dein#add('majutsushi/tagbar')
call dein#add('tomlion/vim-solidity')
call dein#add('raghur/vim-ghost')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')

filetype plugin indent on "required for dein

call dein#end()

"airline doesn't show up until laststatus is 2 for some reason
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline_right_sep = '▜'
let g:airline_left_sep = '▙'
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '▲'

let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_resolve_links = 1
nmap <silent> <leader>b :TagbarToggle<CR>
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
