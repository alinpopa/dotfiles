set nocompatible
filetype off
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/xolox/vim-misc.git'
Plugin 'https://github.com/xolox/vim-notes.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git', {'name': 'ctrlp'}
"Plugin 'git://github.com/kien/ctrlp.vim.git', {'name': 'ctrlp'}
Plugin 'ensime/ensime-vim'
Plugin 'git://github.com/derekwyatt/vim-scala.git'
Plugin 'git://github.com/vim-scripts/VimClojure.git'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/fatih/vim-go.git'
"Plugin 'SirVer/ultisnips'
Plugin 'https://github.com/tfnico/vim-gradle.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
"Plugin 'https://github.com/elixir-lang/vim-elixir.git'
Plugin 'elixir-editors/vim-elixir'
Plugin 'git://github.com/rust-lang/rust.vim.git'
Plugin 'git://github.com/vim-perl/vim-perl.git'
"Plugin 'git://github.com/alinpopa/vimerl.git'
"Plugin 'https://github.com/vim-erlang/vim-erlang-compiler.git'
"Plugin 'https://github.com/KoFish/vim-erlang-compiler.git'
Plugin 'https://github.com/vim-erlang/vim-erlang-runtime.git'
"Plugin 'git@github.com:alinpopa/vim-erlang-runtime.git'
Plugin 'https://github.com/vim-erlang/vim-erlang-compiler.git'
"Plugin 'https://github.com/alinpopa/vim-erlang-compiler.git'
Plugin 'git://github.com/alinpopa/vim-squirrel.git'
Plugin 'https://github.com/vim-erlang/vim-erlang-tags.git'
Plugin 'https://github.com/alinpopa/lucius.vim.git'
"Plugin 'https://github.com/jonathanfilip/vim-lucius.git'
"Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'https://github.com/dleonard0/pony-vim-syntax.git'
Plugin 'https://github.com/jakwings/vim-pony.git'
Plugin 'mileszs/ack.vim'
Plugin 'scwood/vim-hybrid'
"Plugin 'rgrinberg/vim-ocaml'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'junegunn/fzf'
"Plugin 'ruanyl/vim-gh-line'
" and a more recent fork of vim-gh-line ...
Plugin 'jonathancua/vim-gh-line'
"Plugin 'rizzatti/dash.vim'
"Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
"Plugin 'phpvim/phpcd.vim'
Plugin 'joonty/vdebug'
Plugin 'scrooloose/syntastic'

call vundle#end()

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

set vb t_vb=

set guioptions-=T
set guioptions-=e
set t_Co=256
set guitablabel=%M\ %t
"let g:lucius_style = 'dark'
"let g:lucius_contrast_bg = 'normal'
colorscheme lucius
"set background=dark
"colorscheme hybrid

"hi Visual guifg=Yellow guibg=LightBlue gui=none
hi Visual ctermfg=Grey guifg=Grey
command Bgblack execute "highlight Normal ctermfg=grey ctermbg=black"

" File types settings
if has("autocmd")
  filetype on

  autocmd FileType erlang         setlocal sw=4 ts=4
  autocmd FileType python         setlocal sw=4 ts=4
  autocmd FileType ruby           setlocal sw=2 ts=2
  autocmd FileType scala          setlocal sw=2 ts=2
  autocmd FileType java           setlocal sw=4 ts=4
  autocmd FileType javascript     setlocal sw=4 ts=4
  autocmd FileType go             setlocal sw=4 ts=4
  autocmd FileType php            setlocal sw=4 ts=4

  autocmd BufNewFile,BufRead *.p6,*.pl6,*.perl6 set filetype=perl6
  autocmd BufNewFile,BufRead *.nut set filetype=squirrel
  autocmd BufNewFile,BufRead *.alp set filetype=ocaml
  autocmd BufNewFile,BufRead *.ex,*.exs set filetype=elixir
  autocmd BufNewFile,BufRead *.pony set filetype=pony
  autocmd BufNewFile,BufRead *.ts set filetype=typescript
  autocmd BufNewFile,BufRead *.md set filetype=markdown

  autocmd BufWritePost *.scala silent :EnTypeCheck
endif

" ctrlp
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'w'

" the silver searcher settings
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Status bar
let g:airline_section_b = '%{getcwd()}'
"let g:airline#extensions#cursormode#enabled = 0

" Notes
let g:notes_directories = ['~/work/notes']
let g:notes_tab_indents = 0
let g:notes_smart_quotes = 0

" OCaml
let g:syntastic_ocaml_checkers = ['merlin']
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

" Erlang
let g:erlang_tags_ignore = ["'**/.eunit/'", "'**/_rel/'"]

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
hi QuickFixLine ctermbg=94 guibg=#875f00 ctermfg=144 guifg=#afaf87
