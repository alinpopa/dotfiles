":set nocompatible
call pathogen#infect()
call pathogen#helptags()
filetype on
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

nmap ,t <Esc>:tabnew<CR>
nmap ,n <Esc>:tabnext<CR>
nmap ,p <Esc>:tabprevious<CR>
nmap ,q <Esc>:tabclose<CR>
nmap ,1 <Esc>:tabnext 1<CR>
nmap ,2 <Esc>:tabnext 2<CR>
nmap ,3 <Esc>:tabnext 3<CR>
nmap ,4 <Esc>:tabnext 4<CR>
nmap ,5 <Esc>:tabnext 5<CR>
nmap ,6 <Esc>:tabnext 6<CR>
nmap ,7 <Esc>:tabnext 7<CR>
nmap ,8 <Esc>:tabnext 8<CR>
nmap ,9 <Esc>:tabnext 9<CR>
":nmap <C-t> <Esc>:tabnew<CR>
":nmap <C-n> <Esc>:tabnext<CR>

" ruby functionality
nmap <F5> <Esc>:!ruby -c %<CR>
nmap <F6> <Esc>:!ruby %<CR>

" clojure functionality
nmap clj <Esc>:!clj %<CR>

let clj_highlight_builtins = 1
let clj_highlight_contrib = 1
let clj_paren_rainbow = 1

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

au FileType erlang set sw=4 | set ts=4
au FileType python set sw=4 | set ts=4
au FileType ruby set sw=2 | set ts=2
au FileType scala set sw=2 | set ts=2
au FileType java set sw=4 | set ts=4
"au FileType erlang setlocal sw=4 ts=4 et
let g:CommandTMaxFiles = 35000

