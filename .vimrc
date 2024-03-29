set nocompatible
" filetype on
" syntax highligh on
syntax on

" show line number
set number

" move backspace functionality one row upper
set bs=2

" tab indent to 4
set ts=2
set sw=2
set expandtab

filetype indent on
filetype plugin on
set laststatus=2

" in omnicomplete you can see the scratch window; disable it
set completeopt-=preview

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim', {'name': 'ctrlp'}
Plug 'derekwyatt/vim-scala'
Plug 'clojure-vim/clojure.vim'
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'rust-lang/rust.vim'
Plug 'vim-perl/vim-perl'
Plug 'https://github.com/vim-erlang/vim-erlang-runtime.git'
Plug 'https://github.com/vim-erlang/vim-erlang-compiler.git'
Plug 'https://github.com/vim-erlang/vim-erlang-tags.git'
Plug 'https://github.com/alinpopa/lucius.vim.git'
Plug 'alinpopa/falcon'
Plug 'alinpopa/justfalcon'
Plug 'treycucco/vim-monotonic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/jakwings/vim-pony.git'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ruanyl/vim-gh-line'
Plug 'morhetz/gruvbox'
Plug 'Vimjas/vim-python-pep8-indent'

"Plug 'reasonml-editor/vim-reason-plus'
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
Plug 'wolfgangmehner/lua-support'
"Plug 'Valloric/YouCompleteMe'

call plug#end()
" disable vi compatibility
":set nocp

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

map <C-n> :NERDTreeToggle<CR>
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

" vmap
vmap <leader>C "*y

noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>
nnoremap § <Esc>
vnoremap § <Esc>gV
onoremap § <Esc>
cnoremap § <C-C><Esc>
inoremap § <Esc>`^

set vb t_vb=

"set termguicolors
set guioptions-=T
set guioptions-=e
set t_Co=256
set guitablabel=%M\ %t
"let g:lucius_style = 'dark'
"let g:lucius_contrast_bg = 'normal'
set background=dark
"colorscheme lucius
"let g:falcon_lightline = 1
"let g:lightline = {
"  \ 'colorscheme': 'falcon',
"  \ }
let g:airline_theme='lucius'
colorscheme justfalcon
"colorscheme monotonic
"colorscheme gruvbox

"hi Visual guifg=Yellow guibg=LightBlue gui=none
"hi Visual ctermfg=Grey guifg=Grey
command Bgblack execute "highlight Normal ctermfg=grey ctermbg=black"

" File types settings
"if has("autocmd")
"  filetype on

"  autocmd FileType erlang         setlocal sw=4 ts=4
"  autocmd FileType python         setlocal sw=4 ts=4
"  autocmd FileType ruby           setlocal sw=2 ts=2
"  autocmd FileType scala          setlocal sw=2 ts=2
"  autocmd FileType java           setlocal sw=4 ts=4
"  "autocmd FileType javascript     setlocal sw=2 ts=2
"  autocmd FileType go             setlocal sw=4 ts=4
"  autocmd FileType php            setlocal sw=4 ts=4

"  autocmd BufNewFile,BufRead *.p6,*.pl6,*.perl6 set filetype=perl6
"  autocmd BufNewFile,BufRead *.nut set filetype=squirrel
"  autocmd BufNewFile,BufRead *.alp set filetype=ocaml
"  autocmd BufNewFile,BufRead *.ex,*.exs set filetype=elixir
"  autocmd BufNewFile,BufRead *.pony set filetype=pony
"  autocmd BufNewFile,BufRead *.ts set filetype=typescript
"  autocmd BufNewFile,BufRead *.md set filetype=markdown
"  autocmd BufNewFile,BufRead *.re,*.rei set filetype=reason

"  autocmd BufWritePost *.scala silent :EnTypeCheck
"endif

" ctrlp
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'w'

" the silver searcher settings
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never -g "!.git/" --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Status bar
"let g:airline_section_b = '%{getcwd()}'
"let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#cursormode#enabled = 0
"let g:lightline = {
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ],
"      \ }
"      \ }

" Notes
let g:notes_directories = ['~/work/notes']
let g:notes_tab_indents = 0
let g:notes_smart_quotes = 0

" OCaml
" (for NeoVIM, make sure you have Python support, do a :checkhealth )
"let g:syntastic_ocaml_checkers = ['merlin']
"let g:syntastic_erlc_include_path = ['include', 'ebin']
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

" Erlang
let g:erlang_tags_ignore = ["'**/.eunit/'", "'**/_rel/'"]

" Elixir

let g:alchemist_tag_map = '<C-]>'
let g:alchemist_tag_stack_map = '<C-T>'
"autocmd BufWritePost *.exs silent :!mix format %
"autocmd BufWritePost *.ex silent :!mix format %

" Completion
"set completeopt-=preview

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"

" Clojure
nmap clj <Esc>:!clj %<CR>
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

" Nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Set the colors for the Quickfix window
"hi QuickFixLine ctermbg=94 guibg=#875f00 ctermfg=144 guifg=#afaf87

" Reason/OCaml
let g:LanguageClient_serverCommands = {
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ }


" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" GH
let g:gh_open_command = 'fn() { echo "$@" | pbcopy; }; fn '

" Youcompleteme
let g:ycm_auto_trigger = 0
"  to disable ycm at startup
"let g:loaded_youcompleteme = 1

let g:go_search_bin_path_first = 0
let g:go_metalinter_enabled = 0
let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0
