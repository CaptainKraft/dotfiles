" Spacebar as leader
nnoremap <space> <nop>
let mapleader=" "

" Page up and page down remaps
nmap <C-J> <C-d>
nmap <C-K> <C-u>

" Use shift to navigate splits
nmap <S-H> <C-W><C-H>
nmap <S-J> <C-W><C-J>
nmap <S-K> <C-W><C-K>
nmap <S-L> <C-W><C-L>

" Allow j and k to scroll over lines in a single long line
nmap j gj
nmap k gk

" Building and stepping through errors
nnoremap <C-b> <C-0> : :w<CR>:make<CR>:cw<CR>
nnoremap <S-b> <C-0> : :make run<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>

" Semicolon to clear any highlighting
nnoremap ; :nohl<CR>

" Use tab instead of % to match brackets
nnoremap <tab> %
vnoremap <tab> %

" Highlight text that was just pasted
nnoremap <leader>v V']

" Syntax highlighting
syntax on
set termguicolors
colorscheme wombat

" Persistent undo history
set undofile
set undodir=~/.vim/undodir

" Use the system clipboard
set clipboard=unnamedplus

" Show line number stuff to make navigation clearer
set cursorline
set relativenumber
set nu

" All lowercase will ignore, but any uppercase will be case sensitive
set ignorecase
set smartcase

" Default to global search and replace
set gdefault

" Highlight search results
set incsearch
set showmatch
set hlsearch

" Show a few lines above or below the cursor when at the top or bottom of the screen
set scrolloff=3

" Fuzzy searching for files
set path+=**
set wildmenu
set wildignore=*.o,*~,*/cmake-build*,*.out,*/.git/*,*.so,*.lib

" Show line,column at bottom right
set ruler

" Sane indenting
set autoindent
set smartindent

" Sane mouse interaction
set mouse=ar

" Sane tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" File tree config
let g:netrw_banner=0
let g:netrw_liststyle=3

" clang-format
let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
    \ "SortIncludes" : "false",
    \ "PointerAlignment" : "Left",
    \ "IndentCaseLabels" : "true",
    \ "BreakBeforeBraces" : "Mozilla"}
nmap <C-\> : :ClangFormat<CR>

" Odin error formatting
set errorformat+=%f\(%l:%c\)\ %m

"" CTags
command! Ctags !ctags -R .
