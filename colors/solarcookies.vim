" Vim color file
"
" Author:   Kanakarakis c00kiemon5ter Ivan
" URL:      https://github.com/c00kiemon5ter
"

hi clear
set background=dark

if exists("syntax on")
	syntax reset
endif

let g:colors_name="c00kiez"



" ========== Default Groups ==========

hi Normal            cterm=none          ctermfg=none         ctermbg=none
" Conceal
" Cursor
" CursorIM
hi ColorColumn       cterm=none          ctermfg=none         ctermbg=DarkBlue
hi CursorColumn      cterm=none          ctermfg=none         ctermbg=Black
hi CursorLine        cterm=none          ctermfg=none         ctermbg=Black
hi CursorLineNr      cterm=none          ctermfg=Black        ctermbg=DarkYellow
hi SignColumn        cterm=none          ctermfg=none         ctermbg=DarkBlue
hi LineNr            cterm=none          ctermfg=none         ctermbg=DarkBlue
hi DiffAdd           cterm=none          ctermfg=none         ctermbg=DarkBlue
hi DiffChange        cterm=none          ctermfg=none         ctermbg=DarkMagenta
hi DiffDelete        cterm=none          ctermfg=none         ctermbg=DarkRed
hi DiffText          cterm=none          ctermfg=none         ctermbg=DarkYellow
hi ErrorMsg          cterm=none          ctermfg=none         ctermbg=DarkRed
hi Directory         cterm=bold          ctermfg=DarkBlue     ctermbg=none
hi VertSplit         cterm=none          ctermfg=DarkYellow   ctermbg=none
hi Folded            cterm=none          ctermfg=DarkCyan     ctermbg=DarkBlue
hi FoldColumn        cterm=none          ctermfg=DarkYellow   ctermbg=DarkBlue
hi IncSearch         cterm=none          ctermfg=Gray         ctermbg=DarkYellow
hi Search            cterm=none          ctermfg=Black        ctermbg=DarkYellow
hi MatchParen        cterm=none          ctermfg=Gray         ctermbg=DarkCyan
hi ModeMsg           cterm=none          ctermfg=DarkYellow   ctermbg=none
hi MoreMsg           cterm=none          ctermfg=DarkYellow   ctermbg=none
hi NonText           cterm=none          ctermfg=DarkCyan     ctermbg=none
hi Pmenu             cterm=none          ctermfg=none         ctermbg=Black
hi PmenuSel          cterm=none          ctermfg=Black        ctermbg=DarkGreen
hi PmenuSbar         cterm=reverse,bold  ctermfg=Black        ctermbg=none
hi PmenuThumb        cterm=reverse,bold  ctermfg=DarkRed      ctermbg=none
hi Question          cterm=none          ctermfg=DarkYellow   ctermbg=none
hi SpecialKey        cterm=none          ctermfg=DarkCyan     ctermbg=none
hi TabLine           cterm=none          ctermfg=none         ctermbg=DarkBlue
hi TabLineFill       cterm=none          ctermfg=none         ctermbg=DarkBlue
hi TabLineSel        cterm=none          ctermfg=DarkYellow   ctermbg=DarkBlue
hi Title             cterm=bold          ctermfg=DarkMagenta  ctermbg=DarkBlue
hi StatusLine        cterm=none          ctermfg=DarkYellow   ctermbg=DarkBlue
hi StatusLineNC      cterm=none          ctermfg=none         ctermbg=DarkBlue
hi WildMenu          cterm=none          ctermfg=none         ctermbg=DarkMagenta
hi Visual            cterm=none          ctermfg=none         ctermbg=DarkRed
hi VisualNOS         cterm=none          ctermfg=none         ctermbg=DarkBlue
hi WarningMsg        cterm=bold          ctermfg=DarkRed      ctermbg=none
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi SpellBad          cterm=underline     ctermfg=DarkRed      ctermbg=none
hi SpellCap          cterm=underline     ctermfg=DarkCyan     ctermbg=none
hi SpellLocal        cterm=underline     ctermfg=DarkCyan     ctermbg=none
hi SpellRare         cterm=underline     ctermfg=DarkYellow   ctermbg=none



" ========== Major / Minor Groups ==========

hi Constant          cterm=none       ctermfg=DarkYellow
high String          cterm=bold       ctermfg=DarkGreen
high Boolean         cterm=bold       ctermfg=DarkMagenta
high Character       cterm=bold       ctermfg=DarkRed
" high Number          cterm=none       ctermfg=DarkYellow
" high Float           cterm=none       ctermfg=DarkYellow

hi Identifier        cterm=none       ctermfg=DarkCyan
high Function        cterm=bold       ctermfg=DarkCyan

hi Statement         cterm=bold       ctermfg=DarkMagenta
" high Conditional     cterm=none       ctermfg=DarkGreen
high Repeat          cterm=none       ctermfg=DarkRed
high Label           cterm=bold       ctermfg=DarkYellow
high Operator        cterm=bold       ctermfg=DarkYellow
high Exception       cterm=bold       ctermfg=DarkRed
" high Keyword         cterm=bold       ctermfg=DarkYellow

hi PreProc           cterm=bold       ctermfg=DarkCyan
high Macro           cterm=bold       ctermfg=Black
" high Include         cterm=bold       ctermfg=Black
" high Define          cterm=none       ctermfg=DarkCyan
" high PreCondit       cterm=bold       ctermfg=DarkCyan

hi Type              cterm=none       ctermfg=DarkGreen
high StorageClass    cterm=none       ctermfg=DarkYellow
high Structure       cterm=none       ctermfg=DarkMagenta
high Typedef         cterm=bold       ctermfg=DarkMagenta

hi Special           cterm=bold       ctermfg=DarkRed
" high Tag             cterm=bold       ctermfg=DarkRed
" high SpecialChar     cterm=bold       ctermfg=DarkRed
" high SpecialComment  cterm=bold       ctermfg=DarkRed
high Delimiter       cterm=none       ctermfg=DarkCyan
high Debug           cterm=none       ctermfg=DarkRed

hi Error             cterm=none       ctermfg=none         ctermbg=DarkRed
hi Comment           cterm=bold       ctermfg=Black
hi Ignore            cterm=none       ctermfg=Black
hi Underlined        cterm=reverse    ctermfg=DarkYellow   ctermbg=none
hi Todo              cterm=reverse    ctermfg=DarkYellow   ctermbg=none

