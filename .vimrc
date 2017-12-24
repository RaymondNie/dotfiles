if $term == "xterm-256color"
  set t_co=256
endif

set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

plugin 'vundlevim/vundle.vim'

	plugin 'sickill/vim-monokai'
" plugins for convenience {{{
	plugin 'scrooloose/nerdcommenter'               " ezpz comments
	plugin 'scrooloose/nerdtree'			" tree	
	plugin 'jeffkreeftmeijer/vim-numbertoggle'
	plugin 'tpope/vim-surround'			" surround with brackets

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" key mappings {{{
	" easy leader	
	let mapleader = "\<space>"
	nnoremap <leader>w :w<cr>

	" easy copy pasta
	vmap <leader>y "+y
	vmap <leader>d "+d
	nmap <leader>p "+p
	vmap <leader>p "+p
	noremap gv `[v`]
	
"}}}

" native vim settings {{{
	set backspace=indent,eol,start	
	set modelines=1
	set tabstop=4
"}}}
	colorscheme monokai
