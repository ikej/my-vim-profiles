filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!

syntax on 

filetype plugin indent on " Enable filetype-specific indenting and plugins
set completeopt=longest,menu "关掉智能补全时的预览窗口
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
set foldmethod=manual
"set foldlevel=1 " 启动 vim 时不要自动折叠代码
nnoremap <silent> <F3> :Rgrep<CR>
  " Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  augroup END

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
colorscheme ir_black  " Uncomment this to set a default theme
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
" Set 52 lines for the display, 1 for the status line.
" and other display options
if has('gui_running')
    " i like about 80 character width lines

  set textwidth=78
  "  2 for the command line
  set lines=52
  " add columns for the Project plugin

  set columns=110
  " enable use of mouse
  set mouse=a
endif
set expandtab
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed

" Show  tab characters. Visual Whitespace.
set list

"set listchars=tab:>.
" Set ignorecase on
set ignorecase

" smart search (override 'ic' when pattern has uppers)
if has("gui")

  " set the gui options to:
  "   g: grey inactive menu items
  "   m: display menu bar
  "   r: display scrollbar on right side of window
  "   b: display scrollbar at bottom of window

  "   t: enable tearoff menus on Win32
  "   T: enable toolbar on Win32
  set go=gmr
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 13

endif

set hlsearch

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

imap <C-s> <Esc>:w<cr>i
map <C-c> "+y<cr>
map <C-x> "+x<cr>
map! <F12> <Esc>"+gP<cr>
map <F12> "+gP<cr>
map <C-a> ggVG
map <F8> :tselect<cr>
map <F9> :tnext<cr>
imap <F2> <%= %><Esc>hhi
map <C-F11> :mkview<cr>
map <F11> :loadview<cr>

"rvm info
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P

"Line wrap
set wrap
set linebreak
set nolist  " list disables linebreak

"miniBufferExplorer
let g:miniBufExplMapCTabSwitchBufs=1

"Open current Fold by default
NERDTree .
