" Vim settings!
set nocompatible

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Don't backup. For now.
set nobackup

" Set command line history
set history=50

" Set ruler and show uncomplete commands.  set ruler
set showcmd

" Straight slashes 
set shellslash

" Searching features.
set incsearch
set ignorecase
set smartcase

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

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
set ts=4
set shiftwidth=4
set softtabstop=4

" Set hidden
set hidden

" Wildmenu settings
set wildmenu
" set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest
"
" Pathogen stuff
call pathogen#infect('bundles')

" Set indent
filetype indent plugin on
set smartindent

" Syntax highlightning and default theme.
syntax on


if has("gui_running")
"	colorscheme summerfruit256
"	colorscheme desertEx
	set background=dark
	colorscheme solarized
else
	"colorscheme tabula
	"colorscheme wombat256
	"colorscheme xoria256
	"colorscheme zenburn
	"colorscheme herald
	"colorscheme jellybeans
	"colorscheme inkpot
	colorscheme kellys
	"colorscheme lucius
	"colorscheme mustang
	"colorscheme summerfruit256
endif

" I don't like wordwrap in code files
set nowrap

" Set line highlight
set cursorline

" I don't like fancy gui stuff
" But I luv nice smooooooth fonts :)
set guioptions=c

" Map <F3> to open NERDTree
map <F3> <ESC>:NERDTreeToggle<RETURN>

" Shorten messages (disable "Press enter...")
set shortmess=at

" Zen coding rebind
let g:user_zen_expandabbr_key = '<Leader>,'

" Line height (gui only)
set linespace=6

" Set guifont to ubuntu mono 12
" Yeah, I like it
set guifont=Ubuntu\ Mono\ 12

" Set numbers to decimal
" I don't use octal numbers,
" but I use 001, 002, 003, etc
set nrformats=hex

" Lazy redraw 
set lazyredraw

" Put $ on the end of the line when changing
set cpoptions+=$

" No headroom for gui
set guiheadroom=0

" I luv statusline
set statusline=%f%m%y%r%h%=%q%=%([%l,%c][%P]%)
set laststatus=2
