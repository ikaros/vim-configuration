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
  set anti                      " antialiase fonts
  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only),
                                " resized window when changed to fullscreen
  set vb                        " Set visual bell. Silences the common bell.
  set stal=1                    " Show tabs
                                " 0: never
                                " 1: only if there are at least two tab pages
                                " 2: always
  set guioptions=               " Remove the toolbar, menubar, scrollbars etc
  set guifont=Monaco:h12

  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen


elseif has("gui_gtk2")
  set guioptions=  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set nocompatible
"set transparency=0             " Opacity of MacVim

" Default size of window
set columns=179
set lines=50

" Tab headings
set gtl=%t gtt=%F

set noerrorbells             " i don't like beeps
set expandtab                " i don't like tabs

set cpoptions=aABcsmq        " some options
syntax on                    " syntax highlighting on
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
"
" Syntastic *******************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
