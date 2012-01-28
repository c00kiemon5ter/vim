" mirocookies colours
" Author:   Kanakarakis c00kiemon5ter Ivan
" URL:      http://github.com/c00kiemon5ter
"
" Based on miromiro colours
" Author:   jason ryan
" URL:      http://jasonwryan.com
"

set background=dark
hi clear
if exists("syntax on")
    syntax reset
endif

let g:color_name="mirocookies"
" Normal colors  ---
hi Normal          ctermfg=White
hi Ignore          ctermfg=8
hi Comment         ctermfg=8
hi LineNr          ctermfg=8
hi Float           ctermfg=Yellow
hi Include         ctermfg=Magenta
hi Define          ctermfg=Green
hi Macro           ctermfg=Cyan
hi PreProc         ctermfg=DarkGreen
hi PreCondit       ctermfg=Cyan
hi NonText         ctermfg=DarkCyan
hi Directory       ctermfg=DarkCyan
hi SpecialKey      ctermfg=DarkYellow
hi Type            ctermfg=DarkGreen
hi String          ctermfg=Green
hi Constant        ctermfg=Cyan
hi Special         ctermfg=DarkGreen
hi SpecialChar     ctermfg=DarkRed
hi Number          ctermfg=Yellow
hi Identifier      ctermfg=Cyan
hi Conditional     ctermfg=Magenta
hi Repeat          ctermfg=DarkRed
hi Statement       ctermfg=Blue
hi Label           ctermfg=DarkYellow
hi Operator        ctermfg=Yellow
hi Keyword         ctermfg=DarkRed
hi StorageClass    ctermfg=DarkYellow
hi Structure       ctermfg=Magenta
hi Typedef         ctermfg=DarkCyan
hi Function        ctermfg=DarkYellow
hi Exception       ctermfg=Red
hi Underlined      ctermfg=Blue
hi Title           ctermfg=Yellow
hi Tag             ctermfg=DarkYellow
hi Delimiter       ctermfg=DarkBlue
hi SpecialComment  ctermfg=DarkRed
hi Boolean         ctermfg=Yellow
hi Todo            ctermfg=Black
hi MoreMsg         ctermfg=Cyan
hi ModeMsg         ctermfg=Cyan
hi Debug           ctermfg=Red
hi MatchParen      ctermfg=8            ctermbg=White
hi ErrorMsg        ctermfg=White        ctermbg=Red
hi WildMenu        ctermfg=Magenta      ctermbg=White
hi Folded          ctermfg=DarkCyan     ctermbg=Black       cterm=reverse
hi Search          ctermfg=Black        ctermbg=DarkYellow
hi IncSearch       ctermfg=Red          ctermbg=White
hi WarningMsg      ctermfg=White        ctermbg=Red
hi Question        ctermfg=DarkGreen    ctermbg=White
hi Pmenu           ctermfg=White        ctermbg=Black
hi PmenuSel        ctermfg=Black        ctermbg=DarkGreen
hi Visual          ctermfg=White        ctermbg=DarkRed
hi StatusLine      ctermfg=Black        ctermbg=White
hi StatusLineNC    ctermfg=8            ctermbg=Black

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
hi perlStatement  ctermfg=Cyan
hi perlStatementStorage ctermfg=Red
hi perlVarPlain   ctermfg=Yellow
hi perlVarPlain2  ctermfg=DarkYellow

" Specific for Ruby  ---
hi rubySharpBang  ctermfg=DarkGreen  term=standout

" Specific for diff  ---
hi diffLine       ctermfg=DarkGreen
hi diffOldLine    ctermfg=Green
hi diffOldFile    ctermfg=Green
hi diffNewFile    ctermfg=Green
hi diffAdded      ctermfg=Blue
hi diffRemoved    ctermfg=Red
hi diffChanged    ctermfg=DarkCyan

" Spell checking  ---
if version >= 700
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi SpellBad    cterm=underline ctermfg=Red
    hi SpellCap    cterm=underline ctermfg=Cyan
    hi SpellRare   cterm=underline
    hi SpellLocal  cterm=underline
endif
" vim: foldmethod=marker foldmarker={,}:
