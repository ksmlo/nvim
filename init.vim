
" Leader
let mapleader = ','

set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard+=unnamed
set matchpairs={:},[:],(:),<:>
set wildmenu
set number
set splitright
set hls
set foldmethod=indent
set mouse=a

set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

set termguicolors

" plugin
call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-unimpaired'
Plug 'lambdalisue/fern.vim'
Plug 'skanehira/jumpcursor.vim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dense-analysis/ale'
call plug#end()

let g:gitgutter_highlight_lines = 1
" ag
let g:ackprg = 'ag --vimgrep'

" colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'
" fern
let g:fern#default_hidden=1
" jumpcursor
nmap [j <Plug>(jumpcursor-jump)

" Start Fern when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * ++nested Fern -drawer %:h | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufRead * normal zR
nnoremap <Leader>n :Fern . -reveal=% -drawer -toggle -width=40<CR>

" KEYBIND
" use vim-tmux-navigator also term mode
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" coc auto pair
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <C-p> :CocList files<CR>

" coc prettier :Format
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocAction('format')
" undotree
nnoremap <F5> :UndotreeToggle<CR>

" save
nnoremap <C-s> :w<CR>
