set nocompatible
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'jaywilliams/vim-vwilight'
Plug 'dracula/vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-clang-format'
Plug 'lifepillar/vim-mucomplete'
Plug 'badacadabra/vim-archery'
Plug 'jacoborus/tender'
Plug 'crusoexia/vim-dream'
Plug 'farmergreg/vim-lastplace'
Plug 'Rip-Rip/clang_complete'
Plug 'flazz/vim-colorschemes'
"Plug 'vhda/verilog_systemverilog.vim'
Plug 'majutsushi/tagbar'
Plug 'tomasiser/vim-code-dark'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

runtime macros/matchit.vim


set statusline=%F%m%r%h%w%<\ %{&ff}\ %=l/%L,%v\ %p%%

set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set noswapfile
set noerrorbells
set history=1000
set undolevels=1000
set timeout timeoutlen=1000 ttimeoutlen=10
set mouse=a
"set cursorline
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set tabstop=4     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set autoindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set softtabstop=4
set whichwrap=b,s,<,>,[,]

set ttymouse=xterm2


set laststatus=2                " Show status line always
set splitbelow
set clipboard=unnamed,unnamedplus
set hlsearch
set scrolloff=5

set tags+=soc/tags


syntax on
set t_Co=256
let g:rehash256 = 1

"set background=dark
set background=light
colorscheme codedark
"colorscheme PaperColor


map <F8> :TagbarToggle<CR>
noremap <Leader>i :ClangFormat<CR>
""
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:clang_format#code_style='chromium'

set noshowmode
set noinfercase
"set completeopt+=preview
set completeopt+=menuone,noinsert,noselect
let g:clang_library_path='/usr/lib/libclang.so'
let g:clang_user_options = '-std=c11'
let g:clang_complete_auto = 1
let g:mucomplete#enable_auto_at_startup = 1



"let g:clang_periodic_quickfix = 1
"let g:clang_snippets = 1
"let g:clang_conceal_snippets=1
"let g:clang_snippets_engine = 'clang_complete'
"let g:clang_use_library = 1
"let g:clang_library_path='/usr/lib/libclang.so.5.0'
"let g:clang_complete_patterns = 1
"let g:clang_complete_macros = 1
"let g:SuperTabDefaultCompletionType = "context"
"let g:clang_trailing_placeholder=1
"let g:clang_close_preview=1
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
"let g:clang_debug=1

" 
" keys mapping
"

" : -> ;  use ; instead of :
nno : ;
nno ; :
vno : ;
vno ; :

" go to normal mode with jj
"
" learn the hard way
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

nno <up> <nop>
nno <down> <nop>
nno <left> <nop>
nno <right> <nop>

imap ji <esc>
vmap ji <esc>
vmap ii <S-I>
inoremap qq <esc>:wq!<cr>               " save and exit
nnoremap qq :wq!<cr>
inoremap qqqq <esc>:qa!<cr>               " quit discarding changes
nnoremap qqqq :qa!<cr>
nno <silent> <C-C> :nohlsearch<CR>

nmap ff <C-W>W
nmap vv <C-V>
