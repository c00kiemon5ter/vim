" mirocookies colours
" Author:   Kanakarakis c00kiemon5ter Ivan
" URL:      http://github.com/c00kiemon5ter
"

set background=dark
hi clear
if exists("syntax on")
    syntax reset
endif

let g:color_name="c00kiez"

" Normal colors  ---
hi Normal          ctermfg=White
hi Ignore          ctermfg=Black                            cterm=bold
hi Comment         ctermfg=Black                            cterm=bold
hi LineNr          ctermfg=Black                            cterm=bold
hi Float           ctermfg=DarkYellow                       cterm=bold
hi Include         ctermfg=DarkMagenta                      cterm=bold
hi Define          ctermfg=DarkGreen                        cterm=bold
hi Macro           ctermfg=DarkCyan                         cterm=bold
hi PreProc         ctermfg=DarkGreen
hi PreCondit       ctermfg=DarkCyan                         cterm=bold
hi NonText         ctermfg=DarkCyan
hi Directory       ctermfg=DarkCyan
hi SpecialKey      ctermfg=DarkYellow
hi Type            ctermfg=DarkGreen
hi String          ctermfg=DarkGreen                        cterm=bold
hi Constant        ctermfg=DarkCyan                         cterm=bold
hi Special         ctermfg=DarkGreen
hi SpecialChar     ctermfg=DarkRed
hi Number          ctermfg=DarkYellow                       cterm=bold
hi Identifier      ctermfg=DarkCyan                         cterm=bold
hi Conditional     ctermfg=DarkMagenta                      cterm=bold
hi Repeat          ctermfg=DarkRed
hi Statement       ctermfg=DarkBlue                         cterm=bold
hi Label           ctermfg=DarkYellow
hi Operator        ctermfg=DarkYellow                       cterm=bold
hi Keyword         ctermfg=DarkRed
hi StorageClass    ctermfg=DarkYellow
hi Structure       ctermfg=DarkMagenta                      cterm=bold
hi Typedef         ctermfg=DarkCyan
hi Function        ctermfg=DarkYellow
hi Exception       ctermfg=DarkRed                          cterm=bold
hi Underlined      ctermfg=DarkBlue                         cterm=bold
hi Title           ctermfg=DarkYellow                       cterm=bold
hi Tag             ctermfg=DarkYellow
hi Delimiter       ctermfg=DarkBlue
hi SpecialComment  ctermfg=DarkRed
hi Boolean         ctermfg=DarkYellow                       cterm=bold
hi Todo            ctermfg=Black
hi MoreMsg         ctermfg=DarkCyan                         cterm=bold
hi ModeMsg         ctermfg=DarkCyan
hi Debug           ctermfg=DarkRed                          cterm=bold
hi MatchParen      ctermfg=Black        ctermbg=White       cterm=bold
hi ErrorMsg        ctermfg=White        ctermbg=DarkRed
hi WildMenu        ctermfg=DarkMagenta  ctermbg=White       cterm=bold
hi Folded          ctermfg=DarkCyan     ctermbg=Black       cterm=reverse
hi Search          ctermfg=Black        ctermbg=DarkYellow
hi IncSearch       ctermfg=DarkRed      ctermbg=White       cterm=bold
hi WarningMsg      ctermfg=White        ctermbg=DarkRed
hi Question        ctermfg=DarkGreen    ctermbg=White
hi Pmenu           ctermfg=White        ctermbg=Black
hi PmenuSel        ctermfg=Black        ctermbg=DarkGreen
hi Visual          ctermfg=White        ctermbg=DarkRed
hi StatusLine      ctermfg=Black        ctermbg=White
hi StatusLineNC    ctermfg=Black        ctermbg=Black       cterm=bold

" highlight cursor line and column -- dark bg and bold fg
hi CursorLine   cterm=NONE ctermbg=Black ctermfg=none
hi CursorColumn cterm=NONE ctermbg=Black ctermfg=none
hi CursorLineNr cterm=NONE ctermbg=none ctermfg=DarkYellow

" Specific for Vim script  ---
hi vimCommentTitle ctermfg=DarkGreen
hi vimFold         ctermfg=Black    ctermbg=White

" Specific for help files  ---
hi helpHyperTextJump ctermfg=DarkYellow

" JS numbers only ---
hi javaScriptNumber ctermfg=DarkYellow

" Special for HTML ---
hi htmlTag        ctermfg=DarkCyan
hi htmlEndTag     ctermfg=DarkCyan
hi htmlTagName    ctermfg=DarkYellow

" Specific for Perl  ---
hi perlSharpBang  ctermfg=DarkGreen  term=standout
hi perlStatement  ctermfg=DarkCyan      cterm=bold
hi perlStatementStorage ctermfg=DarkRed cterm=bold
hi perlVarPlain   ctermfg=DarkYellow    cterm=bold
hi perlVarPlain2  ctermfg=DarkYellow

" Specific for Ruby  ---
hi rubySharpBang  ctermfg=DarkGreen  term=standout

" Specific for diff  ---
hi diffLine       ctermfg=DarkGreen
hi diffOldLine    ctermfg=DarkGreen  cterm=bold
hi diffOldFile    ctermfg=DarkGreen  cterm=bold
hi diffNewFile    ctermfg=DarkGreen  cterm=bold
hi diffAdded      ctermfg=DarkBlue   cterm=bold
hi diffRemoved    ctermfg=DarkRed    cterm=bold
hi diffChanged    ctermfg=DarkCyan

" Spell checking  ---
if version >= 700
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi SpellBad    cterm=underline ctermfg=DarkRed   cterm=bold
    hi SpellCap    cterm=underline ctermfg=DarkCyan  cterm=bold
    hi SpellRare   cterm=underline
    hi SpellLocal  cterm=underline
endif

