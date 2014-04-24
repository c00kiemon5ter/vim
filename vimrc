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
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
"Bundle 'Rip-Rip/clang_complete'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-blockify'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-markdown'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'sickill/vim-monokai'
Bundle 'jacekd/vim-iawriter'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'chriskempson/base16-vim'
Bundle 'sjl/gundo.vim'
Bundle 'Modeliner'
Bundle 'godlygeek/tabular'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'msanders/snipmate.vim'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'kien/ctrlp.vim'
"Bundle 'bling/vim-airline'

" =============== Plugins Configuration =================

" ctrlp
let g:ctrlp_map = '<c-o>'

" signify
let g:signify_sign_add                  = '+'
let g:signify_sign_delete               = '_'
let g:signify_sign_delete_first_line    = '‾'
let g:signify_sign_change               = '!'
let g:signify_sign_change_delete        = '!_'
let g:signify_sign_color_ctermfg_add    = 6
let g:signify_sign_color_ctermfg_change = 3
let g:signify_sign_color_ctermfg_delete = 1
let g:signify_vcs_list                  = [ 'git', 'hg' ]

" gundo
let g:gundo_preview_bottom   = 1

" clang_complete
"let g:clang_library_path     = '/usr/lib/llvm-3.2/lib/'
"let g:clang_complete_auto    = 1
"let g:clang_complete_copen   = 1
"let g:clang_user_options     = '|| exit 0'

" clang_complete snippets
"let g:clang_snippets         = 1
"let g:clang_snippets_engine  = 'clang_complete' " The single one that works with clang_complete
"let g:clang_conceal_snippets = 1
"set conceallevel=2
"set concealcursor=vin

" =============== General Configuration =================

set showcmd                     "Show incomplete cmds down the bottom
set noshowmode                  "Don't show current mode down the bottom
set laststatus=2                "Always show the statusline
set modeline

set number                      "Line numbers
set nornu                       "Relative numbers

set smarttab
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=500                 "Store lots of :cmdline history

set autoread                    "Reload files changed outside vim
set nohidden

set novisualbell                "No sounds, no visuals
set noerrorbells                "Do not bell on on errors

" Prefer opening splits down and right rather than up and left
set splitbelow
set splitright

set ttyfast

" =============== Syntax and Colors Configuration =======

syntax on
set synmaxcol=140
set cursorline

colorscheme molokookies

set colorcolumn=+1 " next column after textwidth
"let &colorcolumn = 121
"let &colorcolumn = join(range(121,350),",")
" show only on insert
"au InsertEnter * set colorcolumn=+1
"au InsertLeave * set colorcolumn=""

"hi OverLength cterm=none ctermbg=Black ctermfg=none
"match OverLength /\%121v.\+/
"match ErrorMsg '\%>120v.\+'

" =============== Search Configuration ==================

set magic
set incsearch       " Find the next match as we type the search
set hlsearch        " Hilight searches by default
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set ignorecase      " Ignore case when searching
set smartcase       " Unless there are uppercase letters

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
set list
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set matchpairs+=<:>

if &encoding == 'utf-8'
	set listchars=tab:¬\ ,trail:•,extends:❯,precedes:❮
	set showbreak=↪
endif

" =============== Completion Configuration ==============

set wildmenu                      " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore+=*vim/backups*     " stuff to ignore when tab completing
set wildignore+=.hg,.git,.svn                         " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg        " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest      " compiled object files
set wildignore+=*.DS_Store                            " OSX metadata
set wildignore+=*.luac                                " Lua byte code
set wildignore+=*.pyc,*.pyo                           " Python byte code
set wildignore+=vendor/rails/**,vendor/cache/**,*.gem " Ruby files
set wildignore+=log/**,tmp/**                         " Logs

set dictionary=/usr/share/dict/words

" popup menu completion
set pumheight=15               "Limit popup menu height
set completeopt=menu,menuone   "Disable preview scratch window, longest removed to aways show menu

" omni-complete
set omnifunc=syntaxcomplete#Complete
set showfulltag "Show full tags when doing search completion

" use of Ctrl-Space for completion
inoremap <expr> <Nul>     pumvisible() ? "\<C-n>" : "\<C-x>\<C-o>\<C-r>\<CR>"
inoremap <expr> <C-Space> pumvisible() ? "\<C-n>" : "\<C-x>\<C-o>\<C-r>\<CR>"

" use tab to scroll through autocomplete menus
inoremap <expr>   <Tab> pumvisible() ? "\<C-n>" :   "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" =============== Encoding and Spell Checking ===========

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set langmap+=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ
set langmap+=αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

set spell spelllang=en
set nospell

" =============== Scroll Configuration ==================

set scrolloff=5     " Start scrolling when we're 8 lines away from margin
set sidescrolloff=8 " Start scrolling when we're 8 chars away from margin
set sidescroll=1

" =============== Fold Configuration ====================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" =============== Swap Backup Undo Configuration ========

" hopefully the fs journal will take care of these
"set noswapfile
"set swapsync=
"set nofsync
" FAK JOURNAL! IT DOES NOT WORK!
set swapfile

" do not save on quit/next/prev without a :w
set noautowrite
set noautowriteall

set undodir=~/.vim/backups
set undofile

set backupdir=~/.vim/backups
set backup
set writebackup
set backupcopy=auto

" =============== Functions =============================

" Tabularize
inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
	let p = '^\s*|\s.*\s|\s*$'
	if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
		let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
		Tabularize/|/l1
		normal! 0
		call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

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
" Java
autocmd Filetype java      set completefunc=javacomplete#Complete
" nasm
autocmd BufReadPre *.nasm  set filetype=asm
" SVG
autocmd BufReadPre *.svg   set filetype=svg
" Ragel
autocmd BufRead,BufNewFile *.rl set filetype=ragel
" HTML and CSS
autocmd FileType xhtml,html set formatoptions+=tl inde=
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

let mapleader      = ','
let maplocalleader = mapleader

" Tabularize
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

" Leave insert mode without reaching for the esc key
imap jj <ESC>
imap ξξ <ESC>

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

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Basic abbreviations - TODO needs work
abbreviate teh     the
abbreviate abord   abort
abbreviate spolier spoiler
abbreviate atmoic  atomic
iab DATE <C-R>=strftime("%B %d, %Y (%A, %H:%Mh)")<CR>

" C file abbreviations
autocmd FileType c,cpp :ab #d #define
autocmd FileType c,cpp :ab #i #include

" Toggle spell check
nnoremap <F1> :set spell!<CR>
map <leader>s :set spell!<cr>

" Toggle nonprinting characters
nnoremap <F2> :set list!<CR>
map <leader>l :set list!<cr>

" Compile and run keymappings -- F3 run :: F4 build
autocmd FileType c,cpp  map <F3> :!./%:r<CR>
autocmd FileType c      map <F4> :!clear; make CFLAGS="-Wall -Wextra -pedantic -std=c99" CC=clang %:r 2>&1 \|less<CR>
autocmd FileType cpp    map <F4> :make %:r<CR>
" --
autocmd FileType arduino map <F3> :!ino build && ino upload<CR>
autocmd FileType arduino map <F4> :!ino build<CR>
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
autocmd FileType xquery map <F3> :!zorba -i -f -q %\|less<CR>
autocmd FileType xquery map <F4> :!java -cp "$HOME"/tools/Oxygen\ XML\ Editor\ 15/lib/BaseX.jar org.basex.BaseX -w %\|less<CR>

" Fold column
nnoremap <F5> :let &foldcolumn = (&foldcolumn == 0 ? 1 : 0)<CR>
map <leader>f :let &foldcolumn = (&foldcolumn == 0 ? 1 : 0)<CR>

" Sign column
nnoremap <F6> :SignifyToggle<CR>
map <leader>d :SignifyToggle<cr>

" Toggle relative numbers
nnoremap <F7> :set rnu!<CR>
map <leader>r :set rnu!<cr>

" Toggle line numbers
nnoremap <F8> :set number!<CR>
map <leader>n :set number!<cr>

" Toggle tagbar
nnoremap <F9> :TagbarToggle<CR>
map <leader>t :TagbarToggle<CR>

" Toggle paste mode while in insert mode with F10
"set pastetoggle=<F10>
set pastetoggle=<leader>P

" Toggle Gundo
"nnoremap <F11> :GundoToggle<CR>
map <leader>g  :GundoToggle<CR>

