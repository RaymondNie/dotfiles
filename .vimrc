if $TERM == "xterm-256color"
  set t_Co=256
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins for A E S T H E T I C S 
	Plugin 'arcticicestudio/nord-vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'


" Plugins for convenience {{{
	Plugin 'scrooloose/nerdcommenter'               " ezpz comments
        Plugin 'easymotion/vim-easymotion'		" Easy Searching
	Plugin 'scrooloose/nerdtree'			" Tree	
	Plugin 'itchyny/vim-cursorword' 		" Highlights similar words
	Plugin 'mbbill/undotree'			" Undo History	
	Plugin 'jeffkreeftmeijer/vim-numbertoggle'
	Plugin 'tpope/vim-surround'			" Surround with brackets
	Plugin 'ctrlpvim/ctrlp.vim'			" FuzzyFile Search

" HTML
	Plugin 'gregsexton/MatchTag'                	" html tag colouring
"}}}
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Key Mappings {{{
	" Easy Leader	
	let mapleader = "\<Space>"
	nnoremap <Leader>w :w<CR>

	" Easy Copy Pasta
	vmap <Leader>y "+y
	vmap <Leader>d "+d
	nmap <Leader>p "+p
	vmap <Leader>p "+p
	noremap gV `[v`]
	
"}}}

" Native vim settings {{{
        set relativenumber
	set backspace=indent,eol,start	
	set laststatus=2				" airlines
	
	set modelines=1
"}}}
	
" CtrlP {{{
	let g:ctrlp_map = '<c-p>'
"}}}

" Easymotion {{{
        " s{char}{char} to move to {char}{char}
        nmap s <Plug>(easymotion-overwin-f2)
        " Move to line
"}}}

" NerdTree {{{
	map <F2> :NERDTreeToggle<CR>
	nnoremap <TAB>   <C-W>w
"}}}

" UndoTree {{{
	nnoremap <F5> :UndotreeToggle<cr>
	if has("persistent_undo")
	    set undodir=~/.undodir/
	    set undofile
	endif	
"}}}

" pretty/UI {{{
        set background=dark 
	colorscheme solarized 
"}}}

" vim:foldmethod=marker:foldlevel=0
