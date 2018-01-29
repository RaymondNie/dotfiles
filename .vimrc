if $term == "xterm-256color"
  set t_co=256
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

" Plugins {{{
	Plugin 'vundlevim/vundle.vim'
	Plugin 'sickill/vim-monokai'
	Plugin 'vim-airline/vim-airline' 
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'scrooloose/nerdcommenter'            
	Plugin 'scrooloose/nerdtree'		
	Plugin 'kien/ctrlp.vim'
" }}}

call vundle#end()            
filetype plugin indent on   

syntax on

" Startup {{{
	echom "( ͡° ͜ʖ ͡°)"
" }}}

" Airlines {{{
	let g:airline#extensions#tabline#enabled = 1 
	let g:airline#extensions#tabline#fnamemod = ':t'
	let g:airline_powerline_fonts = 1
	let g:airline_theme='zenburn'
	let mapleader = "\<space>"
" }}}

" Ctrl P {{{
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

	let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
	let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	  \ 'file': '\v\.(exe|so|dll)$'
	  \ }

	let g:ctrlp_working_path_mode = 'r'
	" Easier Access
	nnoremap <leader>pp :CtrlP<cr>
	nnoremap <leader>pb :CtrlPBuffer<cr>
" }}}

" Key Mappings {{{
	" Mac Clipboard
	nnoremap <leader>w :w<cr>
	vnoremap <leader>y "+y
	vnoremap <leader>d "+d
	nnoremap <leader>p "+p
	vnoremap <leader>p "+p
	" Line shifting
	noremap - ddp
	noremap _ ddkP
	" Delete line (insert mode)
	inoremap <c-d> <esc>ddO
	" Capitlization (normal mode)
	nnoremap <leader>U <esc>vwU
	nnoremap <leader>u <esc>vwu
	" Quick edit/reload vimrc
	nnoremap <leader>ev :vsplit $MYVIMRC<cr>
	nnoremap <leader>sv :source $MYVIMRC<cr>
	nnoremap <leader>n :set relativenumber!<cr>
	" Abbreviations
	iabbrev @@ nieraymond@gmail.com
	iabbrev ccopy Copyright 2018 Raymond Nie, all rights reserved.
	" Surround
	nnoremap <leader>" viw<esc>a"<esc>bi"<esc>
	nnoremap <leader>' viw<esc>a'<esc>bi'<esc>
	nnoremap <leader>( viw<esc>a)<esc>bi(<esc>
	nnoremap <leader>< viw<esc>a><esc>bi<<esc>
	" Moving around
	nnoremap H 0
	nnoremap L $
	nnoremap 0 <nop>
	nnoremap $ <nop>
	" Buffer shortcuts
	nnoremap <leader>T :enew<cr>
	nnoremap <leader>l :bnext<cr>
	nnoremap <leader>h :bprevious<cr>
	nnoremap <leader>d :bd<cr>
	" Mini Snippets
	autocmd FileType python :iabbrev <buffer> iff if:<left>
	" Operator-Pending Mappings
	onoremap in( :<c-u>normal! f(vi(<cr>
	onoremap il( :<c-u>normal! F(vi(<cr>
" }}}

" Autocommands {{{
	" HTML autocommands
	augroup filetype_html
		autocmd!
		autocmd BufWritePre,BufRead *.html :normal gg=G
	augroup END
	" vim autocommands
	augroup filetype_vim
		autocmd!
		autocmd FileType vim setlocal foldmethod=marker
	augroup END
" }}}

" Basic Settings {{{
	set backspace=indent,eol,start	
	set nowrap
	set autoindent
	set ignorecase
	set hlsearch
	set number
	set modelines=1
	set shiftwidth=4 tabstop=4
	colorscheme monokai
" }}}
