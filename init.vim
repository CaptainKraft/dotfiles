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

" Make the j and k bindings obsolete by disabling wrapping
set nowrap

" Building and stepping through errors
nnoremap <C-b> <C-0> : :wall<CR>:make<CR>:cw<CR>
nnoremap <S-b> <C-0> : :make run<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>

" Building with Odin
command! UpdateOdin !cd .. && cmd.exe /c tools\\get_odin.bat
autocmd Filetype odin setlocal makeprg=C:\Users\Jeremiah\dev\EmberGen\odin\odin.exe\ $*\ ."
autocmd Filetype odin nnoremap <C-b> <C-0> : :w<CR>:make check<CR>:cw<CR>
autocmd Filetype odin nnoremap <S-b> <C-0> : <CR>:make run<CR>:cw<CR

" Semicolon to clear any highlighting
" nnoremap ; :nohl<CR>

" Use tab instead of % to match brackets
nnoremap <tab> %
vnoremap <tab> %

" Highlight text that was just pasted
nnoremap <leader>v V']

" Syntax highlighting
syntax on
set termguicolors
colorscheme wombat256

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
set wildignore=*.o,*~,*/cmake-build*,*.out,*/.git/*,*.so,*.lib,*.dll,*.rc,*.res,*.exe,*.png,*.pdb

" Show line,column at bottom right
set ruler

" Sane indenting
set autoindent
set smartindent

" Sane mouse interaction
set mouse=ar

" Sane tabs
set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab

" File tree config
let g:netrw_liststyle=3

" Odin error formatting
set errorformat+=%f\(%l:%c\)\ %m
