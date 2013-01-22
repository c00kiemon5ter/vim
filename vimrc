" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License, ..omnomnom

" This
" is
" VIM!
set nocompatible

" =============== [VB]undle Configuration ===============

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'othree/html5.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tomtom/quickfixsigns_vim'
Bundle 'zeis/vim-kolor'
Bundle 'Tagbar'
Bundle 'Solarized'
"Bundle 'git://git.wincent.com/command-t.git'

" =============== General Configuration =================

set laststatus=2                "Always show the statusline

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=500                 "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set novisualbell                "No sounds, no visuals
set noerrorbells                "Do not bell on on errors
set autoread                    "Reload files changed outside vim
set hidden
set smarttab
set modeline

" =============== Syntax and Colors Configuration =======

syntax on
set synmaxcol=140

set t_Co=16
set cursorline
colorscheme c00kiez

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

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set textwidth=140

"set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set list listchars=tab:¬\ ,trail:•,extends:>,precedes:<

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

"" Set up the status line
"fun! <SID>SetStatusLine()
"    let l:s1="%-3.3n\\ %f\\ %h%m%r%w"
"    let l:s2="[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]"
"    let l:s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
"    execute "set statusline=" . l:s1 . l:s2 . l:s3
"endfun
"" and use it
"call <SID>SetStatusLine()

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

" When editing a file, always jump to the last known cursor
" position. Don't do it when the position is invalid or when
" inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is
" the default position when opening a file.
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"Clean trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" C file specific options
autocmd FileType c,cpp set cindent
autocmd FileType c,cpp set formatoptions+=ro

" Abbreviations
autocmd FileType c,cpp :ab #d #define
autocmd FileType c,cpp :ab #i #include

" Compile and run keymappings
autocmd FileType c,cpp map <F5> :!./%:r<CR>
autocmd FileType c,cpp map <F6> :make %:r<CR>
autocmd FileType sh,php,perl,python map <F5> :!./%<CR>
autocmd FileType python map <F6> :!python %<CR>
autocmd FileType perl map <F6> :!perl %<CR>
autocmd FileType php map <F6> :!php &<CR>
autocmd FileType java map <F6> :!javac %<CR>
autocmd FileType html,xhtml map <F5> :!chromium%<CR>
autocmd FileType tex map <F5> :!evince "%:r".pdf<CR>
autocmd FileType tex map <F6> :!pdflatex %<CR>

" autocomplete python functions for python file types
autocmd FileType python set completefunc=pythoncomplete#Complete

" Arduino stuff
autocmd BufReadPre *.pde set filetype=c
" nasm
autocmd BufReadPre *.nasm set filetype=asm
" SVG
autocmd BufReadPre *.svg set filetype=svg
" Ragel
autocmd BufRead,BufNewFile *.rl set filetype=ragel

" mutt mails have a maximum text width
autocmd BufRead ~/.article*,/tmp/mutt* set tw=72
" Clear empty lines and turn into space to write in
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,cqel
" Remove blocks of empty lines
autocmd BufRead ~/.article*,/tmp/mutt* :normal ,dl

" open MS Word documents for reading
" alternatives: catdoc, odt2txt
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword "%"

" =============== Keymap Configuration ==================

" Leave insert mode without reaching for the esc key
imap jj <ESC>

" turn off highlighting for a searched term once you hit return
nnoremap <CR> :noh<CR>/<BS>

" Allows writing to files with root privileges
cmap w!! %!sudo tee > /dev/null %

" no arrows!
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Basic abbreviations - TODO needs work
abbreviate teh the
iab DATE <C-R>=strftime("%B %d, %Y (%A, %H:%Mh)")<CR>

" Omni-completion with Ctrl-Space - hell yeah
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
			\ "\<lt>C-n>" :
			\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
			\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
			\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
set completeopt=menu,menuone,longest
set pumheight=15
"set showfulltag "Show full tags when doing search completion

" Easy access help
map! <F1> <C-C><F1>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
nnoremap <F1> :help<Space>

" Toggle nonprinting characters
map <F2> :set list!<CR>
inoremap <F2> <ESC>:set list!<CR>a

" Toggle between windows
nnoremap <F3> <C-W>W
nnoremap <F4> <C-W>w

" Quickfixsigns tagbar
nmap <F7> :QuickfixsignsToggle<CR>
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" Toggle line numbers
map <F8> :set number!<CR>

" Toggle tagbar
nmap <F9> :TagbarToggle<CR>

" Toggle paste mode while in insert mode with F10
set pastetoggle=<F10>

" Toggle dark/light default colour theme for shitty terms
map <F11> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

