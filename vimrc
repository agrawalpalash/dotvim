"-------------------------------------------------------------------------
" Copyright 2010, 2011 Peyman Taher.
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.
"-------------------------------------------------------------------------

" ** general configurations
" always keep the syntax highlighting on
:syntax on
" always show line numbers
:set number
" highlight search
:set hlsearch
" incremental search
:set incsearch
:set ignorecase
:set showcmd
" briefly show the openning bracket when closing one
:set showmatch
" replace tabs with spaces
:set expandtab
" automatically cd to current directory
:set autochdir
" activate mouse
:set mouse=a
:filetype on
:filetype plugin on
:au BufEnter *.c,*.cpp,*.java,*.php,*.inc,*.pl :set cindent
:au BufEnter *.php,*.inc :set expandtab
	:set shiftwidth=2
	:set softtabstop=2
	:set smarttab
	:set tabstop=2
  :set tags=~/tags
:au BufEnter *.c,*.cpp,*.java,*.tex,*.latex :map <F5> :w<CR>:make -f Makefile.%<<CR>:clist<CR>
	:map <F9> :w<CR>:make<CR>:clist<CR>
" :au BufNewFile *.c 0r /etc/vim/skeleton.c
" :au BufNewFile *.cpp 0r /etc/vim/skeleton.cpp
" :au BufNewFile *.java 0r /etc/vim/skeleton.java
" :au BufNewFile *.pl 0r /etc/vim/skeleton.pl
" :au BufNewFile *.py 0r /etc/vim/skeleton.py
" :au BufNewFile *.tex,*.latex 0r /etc/vim/skeleton.tex
" 	:set autoindent
:au BufEnter *.tex,*.latex,*.txt 	:setlocal spell spelllang=en_us
:map <F12> :noh<CR>
:map <C-L> <C-W>l<C-W>\|
:map <C-K> <C-W>k<C-W>_
:map <C-J> <C-W>j<C-W>_
:map <C-H> <C-W>h<C-W>\|
:map <UP> 10k
:map <DOWN> 10j
:map <RIGHT> 10l
:map <LEFT> 10h
:map <C-n> :NERDTreeToggle<CR>
:map <C-f> :TlistToggle<CR>
:map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" ** tabs configurations
" always show the tab line at the top of the page
:set showtabline=2
" maximum number of tabs to open at the same time
:set tabpagemax=15
" adding status line 
:set laststatus=2
:set statusline=%F%=%{strftime('%a\ %b\ %e\ %I:%M\ %p')}
" highlight current cursor line
:set cursorline

" preferred background color is black
syntax enable
set background=dark
colorscheme solarized

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufWritePost *.* :TlistUpdate

" ** tabs manipulations key mapping
" CTRL+l -> go to the next tab
:map <C-l> :tabnext<CR>
" CTRL+h -> go to the previous tab
:map <C-h> :tabNext<CR>
" CTRL+t -> open a new tab
:map <C-t> :tabnew<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:vundle_default_git_proto = 'git'
let Tlist_Ctags_Cmd='~/bin/ctags'
let g:svndiff_autoupdate = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
"
Bundle 'joonty/vdebug'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mudpile45/vim-phpdoc'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
