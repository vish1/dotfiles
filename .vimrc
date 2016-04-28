" Be incompatible with vi
set nocompatible

" Filetype stuff
filetype on
filetype plugin on
filetype indent on

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4

" Turn tabs into spaces
set expandtab

" Backspace now deletes all the 'spaces' put for tabs
set softtabstop=4

" Set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Shows which mode you are in
set showmode

" Make commandline two lines high
set ch=2

" Set visual bell
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background
" are allowed to go in there (i.e. 'must save first' error doesn't come up)
" set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the test and replacing it
set cpoptions=ces$

" Set the status line
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Show the current command in the lower right hand corner
set showcmd

" Switch on syntax highlighting
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set line numbers
set number

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Set the gui options
set guioptions=ac

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Keep some stuff in the history
set history=200

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Disable encryption (:X)
set key=

" Make the command-line completion better
set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 120 chars
set textwidth=72

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Insert current date and time
nnoremap <F6> "=strftime("%c")<CR>P
inoremap <F6> <C-R>=strftime("%c")<CR>

" Save buffer using Ctrl-S
nnoremap <C-S> :w<CR>

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>

" Turn off that stupid highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Underline, overline and both line commands
nmap <silent> ,ul :t.\|s/./=/g\|set nohls<cr>
nmap <silent> ,ol YP\|:s/./=/g\|set nohls<cr>
nmap <silent> ,bl ,olj,ul

" Toggle set list
nmap <silent> ,sl :set list!<CR>

"-----------------------------------------------------------------------------
" Fix constant spelling mistakes
"-----------------------------------------------------------------------------
iab teh       the
iab fro       for
iab Teh       The
iab taht      that
iab Taht      That
iab alos      also
iab Alos      Also
iab aslo      also
iab Aslo      Also
iab becuase   because
iab Becuase   Because
iab bianry    binary
iab Bianry    Binary
iab bianries  binaries
iab Bianries  Binaries
iab charcter  character
iab Charcter  Character
iab charcters characters
iab Charcters Characters
iab exmaple   example
iab Exmaple   Example
iab exmaples  examples
iab Exmaples  Examples
iab shoudl    should
iab Shoudl    Should
iab seperate  separate
iab Seperate  Separate
iab fone      phone
iab Fone      Phone

" Works good for now
colorscheme desert

" Automatically indent when adding a curly bracket
set smartindent

" Confirm dangerous commands
set confirm

" Set font
set guifont=Monaco:h14

map <c-j> :set list!<CR>
