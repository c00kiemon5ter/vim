" Vim color file - kellys
" Generated by http://bytefluent.com/vivify 2012-12-06
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "kellys"

hi IncSearch guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
hi WildMenu guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi SignColumn guifg=#2a2b2f guibg=#67686b guisp=#67686b gui=NONE ctermfg=236 ctermbg=242 cterm=NONE
hi SpecialComment guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi Typedef guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi Title guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=254 ctermbg=236 cterm=bold
hi Folded guifg=#2a2b2f guibg=#67686b guisp=#67686b gui=NONE ctermfg=236 ctermbg=242 cterm=NONE
hi PreCondit guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi Include guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#67686b guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#9d0e15 guibg=#d1c79e guisp=#d1c79e gui=NONE ctermfg=124 ctermbg=187 cterm=NONE
hi ErrorMsg guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
hi Ignore guifg=#67686b guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
hi Debug guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi PMenuSbar guifg=#2a2b2f guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
hi Identifier guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi SpecialChar guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi Conditional guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi StorageClass guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi Todo guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
hi Special guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi LineNr guifg=#67686b guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
hi StatusLine guifg=#2a2b2f guibg=#62acce guisp=#62acce gui=bold ctermfg=236 ctermbg=74 cterm=bold
hi Normal guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=254 ctermbg=236 cterm=NONE
hi Label guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#2a2b2f guibg=#62acce guisp=#62acce gui=bold ctermfg=236 ctermbg=74 cterm=bold
hi Search guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi Statement guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi SpellRare guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
"hi EnumerationValue -- no settings --
hi Comment guifg=#67686b guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
hi Character guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi Float guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi Number guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi Boolean guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi Operator guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi CursorLine guifg=NONE guibg=#303132 guisp=#303132 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=254 ctermbg=236 cterm=bold
hi WarningMsg guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
"hi VisualNOS -- no settings --
hi DiffDelete guifg=#67686b guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
hi ModeMsg guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=254 ctermbg=236 cterm=bold
hi CursorColumn guifg=NONE guibg=#303132 guisp=#303132 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi Function guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=254 ctermbg=236 cterm=NONE
hi FoldColumn guifg=#2a2b2f guibg=#67686b guisp=#67686b gui=NONE ctermfg=236 ctermbg=242 cterm=NONE
hi PreProc guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
hi MoreMsg guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=254 ctermbg=236 cterm=bold
hi SpellCap guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
hi VertSplit guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
hi Exception guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi Keyword guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi Type guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi DiffChange guifg=#2a2b2f guibg=#d1c79e guisp=#d1c79e gui=NONE ctermfg=236 ctermbg=187 cterm=NONE
hi Cursor guifg=#2a2b2f guibg=#e1e0e5 guisp=#e1e0e5 gui=NONE ctermfg=236 ctermbg=254 cterm=NONE
hi SpellLocal guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
hi Error guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
hi PMenu guifg=#2a2b2f guibg=#9ab2c8 guisp=#9ab2c8 gui=NONE ctermfg=236 ctermbg=152 cterm=NONE
hi SpecialKey guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi Constant guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi String guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi PMenuThumb guifg=#2a2b2f guibg=#62acce guisp=#62acce gui=NONE ctermfg=236 ctermbg=74 cterm=NONE
hi MatchParen guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=bold,underline ctermfg=185 ctermbg=236 cterm=bold,underline
"hi LocalVariable -- no settings --
hi Repeat guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi SpellBad guifg=#e1e0e5 guibg=#9d0e15 guisp=#9d0e15 gui=bold ctermfg=254 ctermbg=124 cterm=bold
"hi CTagsClass -- no settings --
hi Directory guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi Structure guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi Macro guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi Underlined guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=underline ctermfg=254 ctermbg=236 cterm=underline
hi DiffAdd guifg=#2a2b2f guibg=#9ab2c8 guisp=#9ab2c8 gui=NONE ctermfg=236 ctermbg=152 cterm=NONE
"hi TabLine -- no settings --
hi mbenormal guifg=#e5e5e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=#aaaaaa guisp=#aaaaaa gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi cursorim guifg=#1F1F1F guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#000000 guibg=#AFC900 guisp=#AFC900 gui=italic ctermfg=NONE ctermbg=148 cterm=NONE
hi user2 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user1 guifg=#ffffff guibg=#0000df guisp=#0000df gui=NONE ctermfg=15 ctermbg=20 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi cdefine guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi cinclude guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi comment guifg=#888888 guibg=NONE guisp=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=NONE
hi rubypredefinedvariable guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi string guifg=#99ad6a guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi htmltag guifg=#00bdec guibg=NONE guisp=NONE gui=bold ctermfg=45 ctermbg=NONE cterm=bold
hi normal guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=254 ctermbg=236 cterm=NONE
hi rubyexception guifg=#8C4D38 guibg=NONE guisp=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi repeat guifg=#480000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi type guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi rubypredefinedidentifier guifg=#de5577 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi rubyaccess guifg=#939264 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubypredefinedconstant guifg=#DA4939 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlbold guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi plsqlconditional guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlstorage guifg=#f5deb3 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi plsqlrepeat guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlfunction guifg=#FFAAAA guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi attribute guifg=#CCCCCC guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
hi gutter guifg=#000000 guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=NONE ctermbg=7 cterm=NONE
hi pythonimport guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#ee0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi pythonbuiltinfunction guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#66cd66 guibg=NONE guisp=NONE gui=bold ctermfg=77 ctermbg=NONE cterm=bold
hi underline guifg=#5faf00 guibg=NONE guisp=NONE gui=underline ctermfg=70 ctermbg=NONE cterm=underline
hi pythonbuiltin guifg=#839496 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi cssboxattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi cssgeneratedcontentattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi htmlarg guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi phpcomparison guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptnumber guifg=#B3EBBF guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi htmltagn guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi cssimportant guifg=#EB5D49 guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi diffcomment guifg=#6B6B6B guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi cssfontprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi phpidentifier guifg=#7895B7 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi cssauralprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi difffile guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi csscommonattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi rubyfunction guifg=#0066bb guibg=NONE guisp=NONE gui=bold ctermfg=4 ctermbg=NONE cterm=bold
hi cssbraces guifg=#00bdec guibg=NONE guisp=NONE gui=bold ctermfg=45 ctermbg=NONE cterm=bold
hi cssfontattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi phpvarselector guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi cssrenderprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi diffadded guifg=#ffffff guibg=#7D9662 guisp=#7D9662 gui=NONE ctermfg=15 ctermbg=101 cterm=NONE
hi cssgeneratedcontentprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi pythoncomment guifg=#6B6B6B guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi csspagingprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi htmlspecialtagname guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi csscolor guifg=#B3EBBF guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi rubyconstant guifg=#5894d2 guibg=NONE guisp=NONE gui=bold ctermfg=68 ctermbg=NONE cterm=bold
hi csscolorattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi phpspecialfunction guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi csstableprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi rubyclassvariable guifg=#7895B7 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi cssuiattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi cssuiprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi rubymodule guifg=#ff0086 guibg=NONE guisp=NONE gui=bold,underline ctermfg=198 ctermbg=NONE cterm=bold,underline
hi diffline guifg=#7895B7 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#444444 guisp=#444444 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi rubyclass guifg=#447799 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi rubydefine guifg=#EB5D49 guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi csstextattr guifg=#92AF72 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi cssfunctionname guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
"hi htmllink -- no settings --
hi diffnoeol guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi cssidentifier guifg=#66cd66 guibg=NONE guisp=NONE gui=bold ctermfg=77 ctermbg=NONE cterm=bold
hi csstextprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi csscolorprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi diffremoved guifg=#ffffff guibg=#D65340 guisp=#D65340 gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
hi phpc1top guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#dd0093 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#7697d6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi csstagname guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi cssclassname guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi phpmemberselector guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi cssfunction guifg=#CBC983 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi cssboxprop guifg=#F3F2CC guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi spellerrors guifg=#ffffff guibg=#7f0000 guisp=#7f0000 gui=NONE ctermfg=15 ctermbg=3 cterm=NONE
hi condtional guifg=#8fffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
"hi cursorime -- no settings --
"hi def -- no settings --
hi scrollbar guifg=#008b8b guibg=#00ffff guisp=#00ffff gui=bold ctermfg=30 ctermbg=14 cterm=bold
hi vimmodeline guifg=#5fd75f guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
hi cursor guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi preproc guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi taglistcomment guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi taglisttitle guifg=#ff00af guibg=#000000 guisp=#000000 gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi user4 guifg=#00ffdf guibg=#0000df guisp=#0000df gui=NONE ctermfg=50 ctermbg=20 cterm=NONE
hi user5 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user3 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi taglistfilename guifg=#ffffff guibg=#870087 guisp=#870087 gui=NONE ctermfg=15 ctermbg=90 cterm=NONE
hi taglisttagscope guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi menu guifg=#000000 guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi _coperators guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi preconduit guifg=#702589 guibg=NONE guisp=NONE gui=underline ctermfg=54 ctermbg=NONE cterm=underline
hi prompt guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi browsedirectory guifg=#97ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi browsesuffixes guifg=#cdc8b1 guibg=#1F3055 guisp=#1F3055 gui=NONE ctermfg=187 ctermbg=17 cterm=NONE
hi statement guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi statementu guifg=#CCEE00 guibg=NONE guisp=NONE gui=underline ctermfg=190 ctermbg=NONE cterm=underline
hi rubylocalvariableormethod guifg=#D0D0FF guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi xmltagname guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubyblockparameter guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi xmlendtag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=#FFC66D guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi xmltag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=#519F50 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi foldecolumn guifg=#535353 guibg=#202020 guisp=#202020 gui=bold ctermfg=239 ctermbg=234 cterm=bold
hi special guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi cppstltype guifg=#729fcf guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi identifier guifg=#c6b6ee guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi function guifg=#fad07a guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi vimfold guifg=#FFFFFF guibg=#000000 guisp=#000000 gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi underlined guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=underline ctermfg=254 ctermbg=236 cterm=underline
hi number guifg=#fce94f guibg=NONE guisp=NONE gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
hi javascriptconditional guifg=#ff0007 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi xmlattribpunct guifg=#cccaa9 guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi javascriptfunction guifg=#ff0086 guibg=NONE guisp=NONE gui=bold ctermfg=198 ctermbg=NONE cterm=bold
hi javascriptregexpstring guifg=#aa6600 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi pythondoctest2 guifg=#3b916a guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi rubystring guifg=#0086d2 guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi rubyindentifier guifg=#008aff guibg=NONE guisp=NONE gui=NONE ctermfg=33 ctermbg=NONE cterm=NONE
hi rubydata guifg=#555555 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi jinjaraw guifg=#aaaaaa guibg=#200000 guisp=#200000 gui=NONE ctermfg=248 ctermbg=52 cterm=NONE
hi rubyspaceerror guifg=NONE guibg=#270000 guisp=#270000 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi javascriptdomelemfuncs guifg=#66cd66 guibg=NONE guisp=NONE gui=NONE ctermfg=77 ctermbg=NONE cterm=NONE
hi erubyrubydelim guifg=#2c8a16 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi erubycomment guifg=#4d9b3a guibg=NONE guisp=NONE gui=italic ctermfg=71 ctermbg=NONE cterm=NONE
hi djangostatement guifg=#fb660a guibg=#200000 guisp=#200000 gui=bold ctermfg=202 ctermbg=52 cterm=bold
hi javascriptlabel guifg=#00bdec guibg=NONE guisp=NONE gui=italic ctermfg=45 ctermbg=NONE cterm=NONE
hi jinjaoperator guifg=#ffffff guibg=#200000 guisp=#200000 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi rubykeyword guifg=#008800 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi jinjavarblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi javascripthtmlelemfuncs guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi jinjaattribute guifg=#dd7700 guibg=#200000 guisp=#200000 gui=NONE ctermfg=172 ctermbg=52 cterm=NONE
hi rubyglobalvariable guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi pythondoctest guifg=#2f5f49 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi javascript guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi djangovarblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=NONE ctermfg=196 ctermbg=52 cterm=NONE
hi javascriptcssstyles guifg=#dd7700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi jinjastring guifg=#0086d2 guibg=#200000 guisp=#200000 gui=NONE ctermfg=32 ctermbg=52 cterm=NONE
hi javascriptrepeat guifg=#ff0007 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi pythonfunction guifg=#ee0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi pythonspaceerror guifg=NONE guibg=#270000 guisp=#270000 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi djangoargument guifg=#0086d2 guibg=#200000 guisp=#200000 gui=NONE ctermfg=32 ctermbg=52 cterm=NONE
hi jinjanumber guifg=#bf0945 guibg=#200000 guisp=#200000 gui=bold ctermfg=1 ctermbg=52 cterm=bold
hi djangocomment guifg=#008800 guibg=#002300 guisp=#002300 gui=italic ctermfg=28 ctermbg=22 cterm=NONE
hi jinjacomment guifg=#008800 guibg=#002300 guisp=#002300 gui=italic ctermfg=28 ctermbg=22 cterm=NONE
hi pythoncoding guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi javascriptdoccomment guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi xmlnamespace guifg=#00bdec guibg=NONE guisp=NONE gui=underline ctermfg=45 ctermbg=NONE cterm=underline
hi htmlevent guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi jinjastatement guifg=#fb660a guibg=#200000 guisp=#200000 gui=bold ctermfg=202 ctermbg=52 cterm=bold
hi xmlcdataend guifg=#bf0945 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi pythonbuiltinfunc guifg=#2b6ba2 guibg=NONE guisp=NONE gui=bold ctermfg=25 ctermbg=NONE cterm=bold
hi xmlequal guifg=#cccaa9 guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi jinjafilter guifg=#ff0086 guibg=#200000 guisp=#200000 gui=NONE ctermfg=198 ctermbg=52 cterm=NONE
hi pythonrun guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi javascriptprototype guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi pythonclass guifg=#ff0086 guibg=NONE guisp=NONE gui=bold ctermfg=198 ctermbg=NONE cterm=bold
hi xmlcdata guifg=#bf0945 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi jinjatagblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=bold ctermfg=196 ctermbg=52 cterm=bold
hi pythonbuiltinobj guifg=#2b6ba2 guibg=NONE guisp=NONE gui=bold ctermfg=25 ctermbg=NONE cterm=bold
hi djangotagblock guifg=#ff0007 guibg=#200000 guisp=#200000 gui=bold ctermfg=196 ctermbg=52 cterm=bold
hi jinjaspecial guifg=#008ffd guibg=#200000 guisp=#200000 gui=NONE ctermfg=33 ctermbg=52 cterm=NONE
hi xmlcdatacdata guifg=#ac1446 guibg=#23010c guisp=#23010c gui=NONE ctermfg=125 ctermbg=52 cterm=NONE
hi xmlcdatastart guifg=#bf0945 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi rubydocumentation guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi djangofilter guifg=#ff0086 guibg=#200000 guisp=#200000 gui=italic ctermfg=198 ctermbg=52 cterm=NONE
hi htmlendtag guifg=#00bdec guibg=NONE guisp=NONE gui=bold ctermfg=45 ctermbg=NONE cterm=bold
hi jinjavariable guifg=#92cd35 guibg=#200000 guisp=#200000 gui=NONE ctermfg=149 ctermbg=52 cterm=NONE
"hi default -- no settings --
hi stringdelimiter guifg=#556633 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi constant guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi rubyregexpdelimiter guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi directory guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#7597c6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
