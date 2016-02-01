" {{{ New things I'm trying"

syntax on

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
" }}}"

"Preventing pinky tendonitis at age 30"
nore ; :

"Return to the original position in the file on reopen"
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"Tabs are ungodly"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Keep buffer lines above and below"
set scrolloff=5

"Because apple is stupid"

"More info is always good"
set nocompatible
set number
set showcmd
set ruler

"Better searching"
nnoremap <CR> :noh<CR><CR>
set showmatch " HL matching braces
set ignorecase
set smartcase
set hlsearch

"Commenting macros"
map<F3> :s/^/# <CR>:noh<Esc><Esc>
map<F4> :s/^# /<CR>:noh<Esc><Esc>


"Keep things in the buffer for multi-pasting"
xnoremap p pgvy

"Allow for F5-mapped deletion of trailing whitespace"
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Highlight bad style"
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
call matchadd('OverLength', '\%111v.*', 1)
highlight TrailingSpace ctermbg=LightBlue guibg=#FFD9D9
call matchadd('TrailingSpace', '\s\+$', 2)
