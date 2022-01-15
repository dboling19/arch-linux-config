" ############################################################################
" ||
" ||  Daniel Boling's customizations of David King's customizations of Paul Ortman's Customization
" ||
" ############################################################################

com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
nnoremap = :FormatXML<Cr>



" keep n lines top/bottom for scope
set scrolloff=10
set sidescrolloff=15

" make find/replace ingore case unless uppercase letters are used
set ignorecase
set smartcase

" make search incremental
set incsearch
set nohlsearch
"set gdefault

set showmatch
set shiftround
set ts=4
"set textwidth=80
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent
set number
set ruler
:%retab!            " Retabulate the whole file
"set linebreak

" lines don't wrap but movement does
set nowrap
set whichwrap=h,l,~,<,>

" color that text!
syntax on
color industry

" Jump to last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
     \| exe "normal! g'\"" | endif
endif

set fileencoding=utf-8
set fileformat=unix
" ............................................................................
"       GVIM vs regular vim differences
" ............................................................................
set bg=dark
colorscheme industry
if has("syntax") && has("gui_running")
  set guifont=Inconsolata\ 11
  "set guifont=Andale\ Mono\ 9
  "set guifont=ProFont\ 11
  colorscheme desert
  set lines=56 columns=90
endif

" ............................................................................
"       Vimspell Options
" ............................................................................
let spell_auto_type = "tex,mail,text,html,sgml"
set mousemodel=popup
let spell_executable = "aspell"

" ............................................................................
"       Plugins
" ............................................................................

" ............................................................................
"       Maps
" ............................................................................

" Silently eliminate all highlighting from the screens
map <silent> <F12> :noh<CR>

" Find trailing whitespace
map <F6> /\s\+$<CR>

" List special characters on an off
map <silent> <F7> :set list<CR>
map <silent> <F8> :set nolist<CR>

" Special Map
:vmap 'd :s#_#\\_#g<CR>

let g:debuggerMaxDepth = 4

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set diffopt+=vertical

