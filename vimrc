	if has('win63') || has('win32') || has('win16')
	call plug#begin('~/vimfiles/plugged')
elseif has('unix')
	call plug#being('~/.vim/plugged')
endif
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'habamax/vim-asciidoctor'
Plug 'jceb/vim-orgmode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'alok/notational-fzf-vim'
Plug 'tpope/vim-speeddating'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
call plug#end()

" write PlugInstall to install those plugins


set encoding=utf-8

" Fold sections, default `0`.
let g:asciidoctor_folding = 1

" Fold options, default `0`.
" let g:asciidoctor_fold_options = 1

" notational-fzf-vim
let g:nv_search_paths = [$NOTES.'']
let g:nv_default_extension = ''

" Make backspace work like in other programs
set backspace=indent,eol,start

" Make indent 2 spaces
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

colorscheme parsec
set guifont=Source_Code_Pro:h12
set incsearch
set hlsearch

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif
