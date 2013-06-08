" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License, ..omnomnom
" Last Update: Sat Jun 08, 2013 16:27 EEST

" This
" is
" VIM!
set nocompatible

" =============== [VB]undle Configuration ===============

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'Rip-Rip/clang_complete'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-blockify'
Bundle 'othree/html5.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'jacekd/vim-iawriter'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'chriskempson/base16-vim'

let g:signify_sign_add                  = '+'
let g:signify_sign_delete               = '_'
let g:signify_sign_delete_first_line    = '‾'
let g:signify_sign_change               = '!'
let g:signify_sign_change_delete        = '!_'
let g:signify_sign_color_ctermfg_add    = 6
let g:signify_sign_color_ctermfg_change = 3
let g:signify_sign_color_ctermfg_delete = 1
let g:signify_vcs_list = [ 'git', 'hg' ]

" =============== General Configuration =================

set showcmd                     "Show incomplete cmds down the bottom
set noshowmode                  "Don't show current mode down the bottom
set laststatus=2                "Always show the statusline
set modeline

set number                      "Line numbers
set rnu                         "Relative numbers

set smarttab
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=500                 "Store lots of :cmdline history
set autoread                    "Reload files changed outside vim
set novisualbell                "No sounds, no visuals
set noerrorbells                "Do not bell on on errors
set nohidden

" =============== Syntax and Colors Configuration =======

syntax on
set synmaxcol=140
set cursorline

colorscheme molokookies

" draw foreground or background after 120 chars
let &colorcolumn = join(range(121,350),",")
"hi OverLength cterm=none ctermbg=Black ctermfg=none
"match OverLength /\%121v.\+/
"match ErrorMsg '\%>120v.\+'

" =============== Search Configuration ==================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set ignorecase       "Ignore case when searching
set smartcase        "Unless there are uppercase letters

" ================ Indentation Configuration ============

filetype plugin indent on

set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

set textwidth=120       "Maximum width of inserted text
set whichwrap=          "Wrap cursor to next/prev line. not!
set nowrap              "Don't wrap lines
set linebreak           "Wrap lines at convenient points
let &showbreak = '+++ ' "Wrapped lines are marked with

"set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set list listchars=tab:¬\ ,trail:•,extends:>,precedes:<
"let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
set matchpairs+=<:>

" =============== Completion Configuration ==============

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set dictionary=/usr/share/dict/words

" Omni-completion with Ctrl-Space - hell yeah
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
		\ "\<lt>C-n>" :
		\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
		\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
		\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone
set showfulltag "Show full tags when doing search completion
set pumheight=15

" =============== Encoding and Spell Checking ===========

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set langmap+=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ
set langmap+=αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

set spell spelllang=en,el
set nospell

" =============== Scroll Configuration ==================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" =============== Fold Configuration ====================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" =============== Swap Backup Undo Configuration ========

set undodir=~/.vim/backups
set undofile
set backupdir=~/.vim/backups
set backup
set writebackup

" =============== Functions =============================

" If the buffer is modified, update any 'Last Update:' string in the first 20 lines.
" 'Last Update:' can have up to 20 characters before and whitespace after it, they are
" both retained. Restores cursor and window position:
function! LastUpdated()
	if &modified
		let save_cursor = getpos(".")
		let n = min([20, line("$")])  "look into the first 20 lines
		exe '1,' . n . 's#^\(.\{,20}Last[ ]\?Updated\?:[[:blank:]]*\).*#\1' . strftime('%a %b %d, %Y %R %Z') . '#e'
		call setpos('.', save_cursor)
	endif
endfun
autocmd BufWritePre * call LastUpdated()

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

" =============== Autocommands ==========================

" turn off any existing search on exit
autocmd VimEnter * nohlsearch

"Clean trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" When editing a file, always jump to the last known cursor
" position. Don't do it when the position is invalid or when
" inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is
" the default position when opening a file.
autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif

" C / C++
autocmd FileType c,cpp set cindent formatoptions+=ro foldmethod=syntax
" GIT
autocmd FileType gitcommit set textwidth=72
" Python
autocmd FileType python    set completefunc=pythoncomplete#Complete foldmethod=indent
" Arduino stuff
autocmd BufReadPre *.pde   set filetype=c
" nasm
autocmd BufReadPre *.nasm  set filetype=asm
" SVG
autocmd BufReadPre *.svg   set filetype=svg
" Ragel
autocmd BufRead,BufNewFile *.rl set filetype=ragel
" HTML and CSS
autocmd FileType html set formatoptions+=tl
autocmd FileType css  set smartindent
let g:html_use_css = 1
" Factor
let g:FactorRoot = '~/projects/factor'

" mutt mails have a maximum text width
autocmd BufRead ~/.article*,/tmp/mutt* set tw=72
" Clear empty lines and turn into space to write in
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,cqel
" Remove blocks of empty lines
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,dl

" open MS Word documents for reading
" alternatives: catdoc, odt2txt
autocmd BufReadPre  *.doc set ro
autocmd BufReadPost *.doc %!antiword "%"

" =============== Keymap Configuration ==================

" Basic abbreviations - TODO needs work
iabbrev lorem Loremipsumdolorsitamet,consecteturadipisicingelit,seddoeiusmod
		\temporincididuntutlaboreetdoloremagnaaliqua.Utenimadminimveniam,quisnostrud
		\exercitationullamcolaborisnisiutaliquipexeacommodoconsequat.Duisauteiruredo
		\lorinreprehenderitinvoluptatevelitessecillumdoloreeufugiatnullapariatur.Exc
		\epteursintoccaecatcupidatatnonproident,suntinculpaquiofficiadeseruntmollita
		\nimidestlaborum.
abbreviate teh     the
abbreviate abord   abort
abbreviate spolier spoiler
abbreviate atmoic  atomic
abbreviate magic   ¡magic!
iab DATE <C-R>=strftime("%B %d, %Y (%A, %H:%Mh)")<CR>
" C file abbreviations
autocmd FileType c,cpp :ab #d #define
autocmd FileType c,cpp :ab #i #include

" Leave insert mode without reaching for the esc key
imap jj <ESC>

" turn off highlighting for a searched term once you hit return
nnoremap <CR> :noh<CR>/<BS>

" Allows writing to files with root privileges
cmap w!! %!sudo tee > /dev/null %

" :W is :w  --  :Q is :q   ffs!
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

" two column connected layout
nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr> :set scb<cr>

" have Q reformat the current paragraph (or selected text if there is any):
nnoremap Q gqap
vnoremap Q gq

" have Y behave like to D and C
noremap Y y$

" no arrows!
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Toggle spell check
map      <F1>      :set spell!<CR>
inoremap <F1> <ESC>:set spell!<CR>

" Toggle nonprinting characters
map      <F2>      :set list!<CR>
inoremap <F2> <ESC>:set list!<CR>

" Compile and run keymappings -- F3 run :: F4 build
autocmd FileType c,cpp  map <F3> :!./%:r<CR>
autocmd FileType c      map <F4> :make CFLAGS="-Wall -Wextra -pedantic -std=c99" %:r<CR>
autocmd FileType cpp    map <F4> :make %:r<CR>
" --
autocmd FileType sh,php,perl,python map <F3> :!./%<CR>
autocmd FileType python map <F4> :!python %<CR>
autocmd FileType perl   map <F4> :!perl %<CR>
autocmd FileType php    map <F4> :!php %<CR>
autocmd FileType java   map <F4> :!javac %<CR>
" --
autocmd FileType tex    map <F3> :!evince "%:r".pdf<CR>
autocmd FileType tex    map <F4> :!pdflatex %<CR>
autocmd FileType html,xhtml map <F3> :!chromium %<CR>

" Fold column
nmap     <F5>      :let &foldcolumn = (&foldcolumn == 0 ? 1 : 0)<CR>
inoremap <F5> <ESC>:let &foldcolumn = (&foldcolumn == 0 ? 1 : 0)<CR>

" Sign column
nmap     <F6>      :SignifyToggle<CR>
inoremap <F6> <ESC>:SignifyToggle<CR>

" Toggle relative numbers
map      <F7>      :set rnu!<CR>
inoremap <F7> <ESC>:set rnu!<CR>

" Toggle line numbers
map      <F8>      :set number!<CR>
inoremap <F8> <ESC>:set number!<CR>

" Toggle tagbar
map      <F9>      :TagbarToggle<CR>
inoremap <F9> <ESC>:TagbarToggle<CR>

" Toggle paste mode while in insert mode with F10
set pastetoggle=<F10>

" Toggle dark/light default colour theme for shitty terms
"map <F11> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

