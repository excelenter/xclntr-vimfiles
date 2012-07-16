set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" TODO: clean unused bundles
" Awesome bundles by Tim Pope!
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'

" EPIC bundles by scrooloose
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'

" All web stuff
Bundle 'mattn/zencoding-vim'
Bundle 'CSS-one-line--multi-line-folding'
Bundle 'jQuery'

" Completion, snippets, etc
Bundle 'drmingdrmer/xptemplate'
Bundle 'ervandew/supertab'

" Aligning, numbering
Bundle 'VisIncr'
Bundle 'Align'

" Window twiggling
Bundle 'ZoomWin'

" FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'

" Organization stuff (vimwiki, etc)
Bundle 'vimwiki'
Bundle 'mattn/calendar-vim'

" Fancy stuff
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'

" Twitter, WP
Bundle 'TwitVim'

" Colorscheme tools
Bundle 'Color-Sampler-Pack'
Bundle 'ScrollColors'

" Python stuff
Bundle 'Python-2.x-Standard-Library-Reference'
Bundle 'Python-3.x-Standard-Library-Reference'

" Session management
Bundle 'xolox/vim-session'

" Buffer juggling
Bundle 'bufexplorer.zip'

" Other bundles
Bundle 'Raimondi/delimitMate'
Bundle 'matchit.zip'
Bundle 'TaskList.vim'
Bundle 'closetag.vim'
Bundle 'excelenter/vim-instead'

" Required
filetype plugin indent on

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Don't backup. For now.
set nobackup

" Set command line history
set history=100

" Show uncomplete commands.
set showcmd

" Straight slashes everytime
set shellslash

" Searching features.
set incsearch
set ignorecase
set smartcase

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Some rat poison
set mouse=

" Language settings.
" I like english VIM :)
set langmenu=en_US.UTF-8
if has('unix')
	language messages C
else
	language messages en
endif

" Set line numbering
" Don't want it for now, though
" set number
" set numberwidth=5

" Set scrolloffset
set scrolloff=3

" Set tabsize
" Somehow I moved to 2 spaces indent
set ts=2
set sw=2
set sts=2
set et

" Enable buffer hiding
set hidden

" Wildmenu settings
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest

" Splits stuff
set splitright
set splitbelow

" Set indent
set smartindent

" Round indent to multiple of shiftwidth
set sr

" Syntax highlightning and default theme.
syntax on

" I don't like wordwrap in code files
set nowrap

" Set line highlight
set cursorline

" I don't like fancy gui stuff
" But I luv nice smooooooth fonts :)
set guioptions=c

" Shorten messages (disable "Press enter..." if possible)
set shortmess=at

" Line height (gui only)
set linespace=6

" Set guifont to ubuntu mono 12
set guifont=Ubuntu\ Mono\ 12

" Set numbers to hex
" I don't use octal numbers,
" but I use 001, 002, 003, etc
set nrformats=hex

" Lazy redraw (speed!)
set lazyredraw

" Turn off goddamn beeping
set novb

" Put $ on the end of the line when changing
set cpoptions+=$

" No headroom for gui
set guiheadroom=0

" Always show statusline
set laststatus=2

if has("gui_running")
	" Set nice gui colorscheme
  colorscheme mustang
	" Set fancy symbols in powerline
	let g:Powerline_symbols="fancy"
else
	colorscheme wombat256
	let g:Powerline_symbols="compatible"
endif

" Tabline tweaks
" --------------
" TODO: set tabline to show tab numbers

" Always show tabline
set showtabline=2

" Personal bindings start 
" -----------------------
" TODO: refine old keybindings

" Zen coding rebind
let g:user_zen_expandabbr_key = '<Leader><Leader>'

" XPT mappings
let g:xptemplate_key = '<S-Space>'

" Map gn to open NERDTree
noremap <silent> gn <ESC>:NERDTreeToggle<RETURN>

" Map gb to open bufexplorer
noremap <silent> gb <ESC>:BufExplorer<RETURN>
noremap <silent> gB <ESC>:BufExplorerVerticalSplit<RETURN>
noremap <silent> ghb <ESC>:BufExplorerHorizontalSplit<RETURN>

" Map gc to :close
noremap <silent> gc <ESC>:close<CR>

" moving lines
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi 
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" Bind ,; to , (inverse last search)
noremap ,; ,

" Tabs stuff
nnoremap <silent> ,t <ESC>:tab split<CR>
vnoremap <silent> ,t <ESC>:tab split<CR>gv
noremap <silent> ,c <ESC>:tabclose<CR>

" Buffers wiping
noremap <silent> ,d <ESC>:bd<CR>
noremap <silent> ,D <ESC>:bd!<CR>

" Other mappings
nnoremap ,s :%s//gc<Left><Left><Left>
vnoremap ,s :s//gc<Left><Left><Left>
nnoremap ,w :TaskList<CR>
nnoremap ,v :e ~/.vim/.vimrc<CR>

" Delimitmate settings
let g:delimitMate_expand_space = 1

inoremap <expr> <CR> delimitMate#WithinEmptyPair() ?
      \ "\<C-R>=delimitMate#ExpandReturn()\<CR>" :
      \ "\<CR>"
