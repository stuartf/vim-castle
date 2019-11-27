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

let g:python3_host_prog = '/home/stuart/.pyenv/versions/nvim-python-3.7.5/bin/python'
let g:python_host_prog = '/home/stuart/.pyenv/versions/nvim-python-2.7.16/bin/python'

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'w0rp/ale'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'tomlion/vim-solidity'
Plugin 'raghur/vim-ghost'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'floobits/floobits-neovim'
Plugin 'Shougo/vimproc.vim'
Plugin 'idanarye/vim-vebugger'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

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
