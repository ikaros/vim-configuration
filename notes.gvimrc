set guifont=Courier\ New:h12
set nolist
set anti
set nonumber
set guioptions=""
set expandtab
set softtabstop=4
set shiftwidth=4
set foldmethod=indent
set foldcolumn=3
set nocompatible

" Commands =================================================================
map mb       :s/\( *\)/\1[ ] /<CR><C-o>
map mx       :s/\[.\]/[x]/<CR><C-o>
map mr       :s/\[.\]/[r]/<CR><C-o>
map m<space> :s/\[.\]/[ ]/<CR><C-o>
map q        :wqa<CR>

" Colorscheme ==============================================================

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "notes"


" General colors
hi Normal           guifg=#2A2A2A     guibg=#FDFFE2     gui=NONE
hi NonText          guifg=#FDFFE2     guibg=#FDFFE2     gui=NONE

hi Cursor           guifg=#FFFFFF     guibg=#808080     gui=NONE
hi LineNr           guifg=#C2C890     guibg=#FBFFCB     gui=NONE

hi VertSplit        guifg=white       guibg=#707070     gui=NONE
hi StatusLine       guifg=#FFFFFF     guibg=#6F9C00     gui=BOLD
hi StatusLineNC     guifg=#FFFFFF     guibg=#9DCE00     gui=BOLD

hi Folded           guifg=#999999     guibg=NONE        gui=NONE
hi FoldColumn       guifg=#AAAAAA     guibg=#FDFFE2     gui=BOLD

hi Title            guifg=#f6f3e8     guibg=NONE        gui=bold
hi Visual           guifg=NONE        guibg=#C8FF00     gui=NONE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE

hi WildMenu         guifg=green       guibg=yellow      gui=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD

" Message displayed in lower left,ch as --INSERT
hi ModeMsg          guifg=black    guibg=#C6C5FE  gui=BOLD

" Highlight incremental search thefari way
hi IncSearch        guifg=white    guibg=#DE7F00  gui=BOLD


if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=NONE        gui=UNDERLINE
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD
  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE
  hi Search         guifg=NONE        guibg=NONE        gui=underline
endif

if &t_Co > 255
  hi Normal           ctermfg=234    ctermbg=230   cterm=NONE
  hi NonText          ctermfg=230    ctermbg=230   cterm=NONE

  hi Cursor           ctermfg=255    ctermbg=234   cterm=NONE
  hi LineNr           ctermfg=242    ctermbg=230   cterm=NONE

  hi VertSplit        ctermfg=252    ctermbg=237   cterm=NONE
  hi StatusLine       ctermfg=255    ctermbg=34    cterm=NONE
  hi StatusLineNC     ctermfg=255    ctermbg=76    cterm=NONE

  hi Folded           ctermfg=242    ctermbg=NONE  cterm=NONE
  hi FoldColumn       ctermfg=242    ctermbg=NONE  cterm=NONE

  hi Visual           ctermfg=NONE   ctermbg=190   cterm=NONE
" 
" 
"   hi WildMenu         ctermfg=green  guibg=yellow   gui=NONE
"   hi PmenuSbar        ctermfg=black  guibg=white    gui=NONE
" 
"   hi Error            ctermfg=NONE     guibg=NONE     gui=undercurl
"   hi ErrorMsg         ctermfg=white    guibg=#FF6C60  gui=BOLD
"   hi WarningMsg       ctermfg=white    guibg=#FF6C60  gui=BOLD
" 
"   " Message displayed in lower left,ch as --INSERT
"   hi ModeMsg          guifg=black    guibg=#C6C5FE  gui=BOLD
" 
"   " Highlight incremental search thefari way
"   hi IncSearch        guifg=white    guibg=#DE7F00  gui=BOLD
" 
" 
"   if version >= 700 " Vim 7.x specific colors
"     hi CursorLine     guifg=NONE        guibg=NONE        gui=UNDERLINE
"     hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE
"     hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD
"     hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE
"     hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE
"     hi Search         guifg=NONE        guibg=NONE        gui=underline
"   endif
endif
