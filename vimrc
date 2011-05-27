" Pathogen {
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" }

" Autocommands {
if has("autocmd")
  filetype plugin indent on " Enable file type detection

  autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab nolist
  autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab   list
  autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab   list
  autocmd FileType vim        setlocal ts=2 sts=2 sw=2 expandtab   list
  autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab   list
  autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab   list
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab nolist

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
" }

" Basics {
set nocompatible    " explicitly get out of vi-compatible mode
set noexrc          " don't use local version of .(g)vimrc, .exrc
set background=dark " we plan to use a dark background
set cpoptions=aABceFsmq
             "|||||||||
             "||||||||`-- When joining lines, leave the cursor
             "||||||||    between joined lines
             "|||||||`--- When a new match is created (showmatch)
             "|||||||     pause for .5
             "||||||`---- Set buffer options when entering the
             "||||||      buffer
             "|||||`----- :write command updates current file name
             "||||`------ Automatically add <CR> to the last line
             "||||        when using :@r
             "|||`------- Searching continues at the end of the match
             "|||         at the cursor position
             "||`-------- A backslash has no special meaning in mappings
             "|`--------- :write updates alternative file name
             "`---------- :read updates alternative file name
colorscheme molokai
syntax on " syntax highlighting on
" }

" General {
set backspace=indent,eol,start " make backspace a more flexible
set nobackup                   " do not make backup files
set clipboard+=unnamed         " share windows clipboard
set fileformats=unix,dos,mac   " support all three, in this order
set hidden                     " you can change buffers without saving

" (XXX: #VIM/tpope warns the line below could break things)
set iskeyword+=_,$,@,%,#       " none of these are word dividers

set noerrorbells               " don't make noise
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
            " | | | | | | | | |
            " | | | | | | | | `-- "]" Insert and Replace
            " | | | | | | | `---- "[" Insert and Replace
            " | | | | | | `------ "~" Normal
            " | | | | | `-------- <Right> Normal and Visual
            " | | | | `---------- <Left> Normal and Visual
            " | | | `------------ "l" Normal and Visual (not recommended)
            " | | `-------------- "h" Normal and Visual (not recommended)
            " | `---------------- <Space> Normal and Visual
            " `------------------ <BS> Normal and Visual

set wildmenu " turn on command line completion wild style

" ignore these list file extensions
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
\*.jpg,*.gif,*.png

set wildmode=list:longest " turn on wild mode huge list
" }

" Vim UI {
set incsearch                " do search and highlight while typing
set laststatus=2             " always show the status line
set lazyredraw               " do not redraw while running macros
set listchars=tab:»·,trail:· " show tabs and trailing
set matchtime=5              " how many tenths of a second to blink
                             " matching brackets for
set nostartofline            " leave my cursor where it was
set novisualbell             " don't blink
set number                   " turn on line numbers
set numberwidth=4            " We are good up to 9999 lines
set report=0                 " always show the last :.. command
set ruler                    " show current positions along the bottom
set scrolloff=4              " keep the cursor vertical middle if possible
set shortmess=aOstT          " shortens messages to avoid
                             " 'press a key' prompt
set showcmd                  " show the command being typed
set showmatch                " show matching brackets
set sidescrolloff=10         " Keep 5 lines at the size
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
             " | | | | | | | | | | ` current column
             " | | | | | | | | | `-- current line
             " | | | | | | | | `---- current % into file
             " | | | | | | | `------ current syntax in square brackets
             " | | | | | | `-------- current fileformat
             " | | | | | `---------- number of lines
             " | | | | `------------ preview flag in square brackets
             " | | | `-------------- help flag in square brackets
             " | | `---------------- readonly flag in square brackets
             " | `------------------ rodified flag in square brackets
             " `-------------------- full path to file in the buffer
" }

" Text Formatting/Layout {
set formatoptions=rq " Automatically insert comment leader on return,
                     " and let gq format comments
set ignorecase       " case insensitive by default
set infercase        " case inferred by default
set shiftround       " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase        " if there are caps, go case-sensitive
" }

