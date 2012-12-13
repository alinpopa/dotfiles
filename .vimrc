":set nocompatible
call pathogen#infect()
call pathogen#helptags()
filetype indent on
filetype plugin on
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" syntax highligh on
syntax on

" show line number
set number

" move backspace functionality one row upper
set bs=2

" disable vi compatibility
":set nocp

" tab indent to 4
set ts=2
set sw=2
set expandtab

" enable folding
":set foldmethod=syntax

" foldlevel to 100
set foldlevel=100

" disable line wrapping
":set nowrap

" highlight search strings
set hlsearch
":set incsearch

" tab functionality
"set showtabline=2

" leader settings
let mapleader = ","
let g:mapleader = ","


nmap <leader>t <Esc>:tabnew<CR>
nmap <leader>n <Esc>:tabnext<CR>
nmap <leader>p <Esc>:tabprevious<CR>
nmap <leader>q <Esc>:tabclose<CR>
nmap <leader>1 <Esc>:tabnext 1<CR>
nmap <leader>2 <Esc>:tabnext 2<CR>
nmap <leader>3 <Esc>:tabnext 3<CR>
nmap <leader>4 <Esc>:tabnext 4<CR>
nmap <leader>5 <Esc>:tabnext 5<CR>
nmap <leader>6 <Esc>:tabnext 6<CR>
nmap <leader>7 <Esc>:tabnext 7<CR>
nmap <leader>8 <Esc>:tabnext 8<CR>
nmap <leader>9 <Esc>:tabnext 9<CR>
":nmap <C-t> <Esc>:tabnew<CR>
":nmap <C-n> <Esc>:tabnext<CR>

nmap <leader>w <Esc>:w!<CR>
nmap <C-s> <Esc>:w!<CR>
imap <C-s> <Esc>:w!<CR>
nmap <leader>Q <Esc>:qa<CR>
nmap <leader>q <Esc>:q<CR>
nmap <C-q> <Esc>:q<CR>

" json reformat (brew install yajl)
nmap <leader>fj <Esc>:%!json_reformat<CR>

" xml reformat (brew install xmllint)
nmap <leader>fx <Esc>:%!xmllint --format -<CR>

" ruby functionality
nmap <F5> <Esc>:!ruby -c %<CR>
nmap <F6> <Esc>:!ruby %<CR>

" clojure functionality
nmap clj <Esc>:!clj %<CR>

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

"let clj_want_gorilla = 1

"let vimclojure#NailgunClient = "/Users/alin/apps/vimclojure-2.1.2/ng"


" haskell stuff
"let g:haskell_indent_if = 2

set vb t_vb=

"colorscheme wombat

" show hiden characters (like line feed)
"set list

" NERDTree
nmap nt <Esc>:NERDTreeToggle<CR>

if has("gui_running")
  colorscheme lucius
endif

if has("autocmd")
  filetype on

  autocmd FileType erlang setlocal sw=4 ts=4
  autocmd FileType python set sw=4 | set ts=4
  autocmd FileType ruby set sw=2 | set ts=2
  autocmd FileType scala set sw=2 | set ts=2
  autocmd FileType java set sw=4 | set ts=4
endif

let g:CommandTMaxFiles = 35000

