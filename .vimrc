filetype plugin on
syntax on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"" allow j and k to scroll over lines in a single long line
nmap j gj
nmap k gk

"" center after movement
nmap <C-]> <C-]>zz
nmap <C-T> <C-T>zz
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz
nmap n nzz
nmap N Nzz
nmap gg ggzz
nmap <C-J> <C-d>
nmap <C-K> <C-u>

"" navigating splits
nmap <S-H> <C-W><C-H>
nmap <S-J> <C-W><C-J>
nmap <S-K> <C-W><C-K>
nmap <S-L> <C-W><C-L>

"" spell check
nmap <F12> <ESC>:setlocal spell spelllang=en_us<CR>
nmap <F11> <ESC>:setlocal nospell<CR>

"" building and stepping through errors
nnoremap <C-b> <C-0> : :w<CR>:make<CR>:cw<CR>
nnoremap <S-b> <C-0> : :make run<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>
nnoremap <ESC> :ccl<CR>

colorscheme wombat256
nnoremap ; :nohl<CR>
set nocompatible
set t_Co=256

set pastetoggle=<F2>
set clipboard=unnamedplus
set mouse=ar
set cursorline
set relativenumber
set nu
set undofile
set undodir=~/.config/nvim/undodir
set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set showmatch
set splitbelow
set splitright

let g:netrw_banner=0    " disable banner
let g:netrw_altv=1      " open splits to right
let g:netrw_liststyle=3 " tree view

"" finding files
set path+=**
set wildmenu
set wildignore=*.o,*~,*/cmake-build*,*.out,*/.git/*

"" clang-format
let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
    \ "SortIncludes" : "false",
    \ "PointerAlignment" : "Left",
    \ "IndentCaseLabels" : "true",
    \ "BreakBeforeBraces" : "Mozilla"}
nmap <C-\> : :ClangFormat<CR>

"" Odin
set errorformat+=%f\(%l:%c\)\ %m
autocmd FileType odin :set makeprg=make
autocmd FileType odin nnoremap <buffer> <C-b> : :w<CR>:make run .<CR>

"" Rust
autocmd FileType rust :compiler cargo
autocmd FileType rust nnoremap <buffer> <C-b> : :w<CR>:make build<CR>:cw<CR>
autocmd FileType rust nnoremap <buffer> <S-b> : :w<CR>:make run<CR>:cw<CR>
let g:rustfmt_command = "rustfmt"
autocmd FileType rust nnoremap <C-\> : :RustFmt<CR>

"" CTags
command! MakeTags !ctags -R .

" END
packloadall
silent! helptags ALL
