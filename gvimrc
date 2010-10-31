" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------

" Pathogen*********************************************************************
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if has("autocmd")
  filetype plugin indent on
endif

" OS Specific *****************************************************************
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz  " fullscreen options (MacVim only), resized window when changed to fullscreen
  set stal=1                     " Show tabs
                                 " 0: never
                                 " 1: only if there are at least two tab pages
                                 " 2: always

  set guioptions-=T              " Remove the toolbar and menubar
  set guioptions-=m
  set guioptions-=r              " Remove right- and left-hand scrollbars
  set guioptions-=L
  set guioptions+=c              " Console-based dialogs for simple queries
  set guifont=Monaco:h10
  colorscheme ir_black

elseif has("gui_gtk2")
  set guifont=Monaco
  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set anti " Antialias font
set nocompatible
"set transparency=0             " Opacity of MacVim
set vb                          " Set visual bell. Silences the common bell.

" Default size of window
set columns=179
set lines=50

" Tab headings
set gtl=%t gtt=%F

set noerrorbells             " i don't like beeps
set expandtab                " i don't like tabs

set cpoptions=aABcsmq        " some options
syntax on                    " syntax highlighting on
filetype plugin indent on    " load filetype plugins/indent
set number
set fileformats=unix         " i don't care about dos or mac
set showmatch                " show matching brackets
set incsearch                " highlite searchresults while typing

set laststatus=2             " always show the status line
set ruler                    " show position in status line
                             " formatting of status line:
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%02v]

set list                     " highlite tabs
set listchars=tab:>-,trail:- " show tabs like >---

match DiffAdd '\%>80v.*'
