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
set ts=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Set hidden
set hidden

" Wildmenu settings
set wildmenu
" set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest

" Set indent
filetype indent plugin on
set smartindent

" Syntax highlightning and default theme.
syntax on

" Dark background
" set background=dark

" Pathogen stuff
call pathogen#infect('bundles')

if has("gui_running")
  "colorscheme desertEx
  colorscheme railscasts2
	"colorscheme solarized
	"colorscheme inkpot
else
	"colorscheme xoria256
	"colorscheme zenburn
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
set shortmess=atI

" Zen coding rebind
let g:user_zen_expandabbr_key = '<Leader>,'

" Line height (gui only)
set linespace=2

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
" But now I use powerline, it's AWESOME!
" So doesn't need this anymore.
" set statusline=%f%m%y%r%h%=%q%=%([%l,%c][%P]%)

set laststatus=2

" Plugins stuff

" Powerline stuff
let g:Powerline_symbols="fancy"

" XPT Stuff
" Tab mapping
let g:xptemplate_key = "<Tab>"
