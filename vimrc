" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
" stole some cookies from meqif and rezza

""""""""""
" Vundle "
""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" -- original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'othree/html5.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tomtom/quickfixsigns_vim'
Bundle 'zeis/kolor'
" -- vim-scripts repos
Bundle 'Tagbar'
Bundle 'Solarized'
" -- non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"
" Enable filetype detection
filetype plugin indent on

"""""""""""""
" Functions "
"""""""""""""

" " Set up the status line
" fun! <SID>SetStatusLine()
"     let l:s1="%-3.3n\\ %f\\ %h%m%r%w"
"     let l:s2="[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]"
"     let l:s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
"     execute "set statusline=" . l:s1 . l:s2 . l:s3
" endfun
" " and use it
" call <SID>SetStatusLine()

" Copy/Paste from Word*doc files is a mess
fun! FixInvisiblePunctuation()
    silent! %s/\%u2018/'/g
    silent! %s/\%u2019/'/g
    silent! %s/\%u2026/.../g
    silent! %s/\%uf0e0/->/g
    silent! %s/\%u0092/'/g
    silent! %s/\%u2013/--/g
    silent! %s/\%u2014/--/g
    silent! %s/\%u201C/"/g
    silent! %s/\%u201D/"/g
    silent! %s/\%u0052\%u20ac\%u2122/'/g
    silent! %s/\%ua0/ /g
    retab
endfun

""""""""""""""""
" Autocommands "
""""""""""""""""

" Clear previous autocmds, stops a few errors creeping in.
" all commands should be under this
autocmd!

" When editing a file, always jump to the last known cursor
" position. Don't do it when the position is invalid or when
" inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is
" the default position when opening a file.
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"Clean trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Set comment characters for common languages
autocmd FileType python,sh,bash,zsh,ruby,perl let StartComment="#" | let EndComment=""
autocmd FileType html let StartComment="<!--" | let EndComment="-->"
autocmd FileType php,c,javascript let StartComment="//" | let EndComment=""
autocmd FileType cpp,java let StartComment="/*" | let EndComment="*/"
autocmd FileType vim let StartComment="\"" | let EndComment=""

" C file specific options
autocmd FileType c,cpp set cindent
autocmd FileType c,cpp set formatoptions+=ro

" Abbreviations
autocmd FileType c,cpp :ab #d #define
autocmd FileType c,cpp :ab #i #include

" Compile and run keymappings
autocmd FileType c,cpp map <F5> :!./%:r<CR>
autocmd FileType sh,php,perl,python map <F5> :!./%<CR>
autocmd FileType c,cpp map <F6> :make %:r<CR>
autocmd FileType php map <F6> :!php &<CR>
autocmd FileType python map <F6> :!python %<CR>
autocmd FileType perl map <F6> :!perl %<CR>
autocmd FileType html,xhtml map <F5> :!chromium%<CR>
autocmd FileType java map <F6> :!javac %<CR>
autocmd FileType tex map <F5> :!evince "%:r".pdf<CR>
autocmd FileType tex map <F6> :!pdflatex %<CR>

" MS Word document reading
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword "%"
" alternatively
"autocmd BufReadPost *.doc %!catdoc "%"
"autocmd BufReadPost *.doc %!odt2txt "%"

" Arduino stuff
autocmd BufReadPre *.pde set filetype=c

" nasm
autocmd BufReadPre *.nasm set filetype=asm

" SVG
autocmd BufReadPre *.svg set filetype=svg

" Ragel
autocmd BufRead,BufNewFile *.rl set filetype=ragel

" turn off any existing search on exit
autocmd VimEnter * nohlsearch

" autocomplete python functions for python file types
autocmd FileType python set completefunc=pythoncomplete#Complete

" mutt mails have a maximum text width
autocmd BufRead ~/.article*,/tmp/mutt* set tw=72
" Clear empty lines and turn into space to write in
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,cqel
" Remove blocks of empty lines
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,dl

""""""""""""
" Settings "
""""""""""""

" show invisible chars
set listchars=tab:¬\ ,trail:•,extends:>,precedes:<
"set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set list

" Always show the statusline
set laststatus=2

" Encoding
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

" No visual bell
set novisualbell
set noerrorbells

" Basic options
set history=50
set viminfo='1000,f1,:1000,/1000
set shortmess+=aI
set showmode
set showcmd
set modeline
set wildmenu
set wildignore+=*.o,*~,.lo
set suffixes+=.in,.a,.1

" Spell Checking
set spell spelllang=en,el
set nospell

" folding
set nofoldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=0

" turn off highlighting for a searched term once you hit return
nnoremap <CR> :noh<CR>/<BS>

" Indent, tab, and wrap settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
set shiftround
set autoindent
set smartindent
set textwidth=140
set synmaxcol=140
set nowrap
set formatoptions+=nl
set whichwrap=h,l,~,<,>,[,]
set backspace=eol,start,indent

" When scrolling off-screen do so 3 lines at a time
set scrolloff=2

" show line numbers
set numberwidth=1
set number

" Search options
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set dictionary=/usr/share/dict/words

" Show full tags when doing search completion
set showfulltag

" Set comment formats
set comments-=s1:/*,mb:*,ex:*/
set comments+=s:/*,mb:**,ex:*/
set comments+=fb:*
set comments+=b:\"
set comments+=n::

" Keep backup of edited files
set backup
set writebackup
set backupdir=~/.vim/backups/

" Gist
let g:gist_clip_command = 'xclip'
let g:gist_detect_filetype = 1

" Basic abbreviations - needs work
abbreviate teh the
iab DATE <C-R>=strftime("%B %d, %Y (%A, %H:%Mh)")<CR>

" Allows writing to files with root privileges
cmap w!! %!sudo tee > /dev/null %

"""""""""""""""
" Keymappings "
"""""""""""""""

" match open closing braces
":inoremap ( ()<ESC>i
":inoremap { {}<ESC>i
":inoremap [ []<ESC>i
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i

" hardcore mode aka no arrows ~ roflol
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Omni-completion with Ctrl-Space - hell yeah
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
set completeopt=menu,menuone,longest
set pumheight=15

" Easy help
map! <F1> <C-C><F1>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
nnoremap <F1> :help<Space>

" Show nonprinting characters
map <F2> :set list!<CR>
inoremap <F2> <ESC>:set list!<CR>a

" Toggle between windows
nnoremap <F3> <C-W>W
nnoremap <F4> <C-W>w

" Easy tabswitch
map <C-Tab> :tabNext<cr>

" Swap around between buffers
"nnoremap <C-N> :bn<CR>
"nnoremap <C-I> :bn<CR>
"nnoremap <C-P> :bp<CR>

" Quickfixsigns tagbar
nmap <F7> :QuickfixsignsToggle<CR>
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>

" Toggle line numbers
map <F9> :set number!<CR>

" Toggle dark/light default colour theme for shitty terms
map <F11> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

" Leave insert mode without reaching for the esc key
imap jj <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme selection and syntax hilighting "
"""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set popt+=syntax:y
set cursorline

set t_Co=16
colorscheme c00kiez

" vim: nofoldenable
