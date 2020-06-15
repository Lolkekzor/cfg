set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" Persistent undo
set undodir=~/.vim/undodir
set undofile

" Show current command
set showcmd

" Copy to system clipboard
set clipboard+=unnamed
set clipboard+=unnamedplus

" True colors
set termguicolors

" Line numbering
set relativenumber
set number

" New window split to below
set splitbelow

" Python paths override for virtualenvs
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3.6'

" Python PEP8 extend max line length
let g:pymode_options_max_line_length=120

" Clear highlighting with ESC key
nnoremap <esc> :noh<return><esc>

" NERDtree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
" Git status bar
Plug 'vim-airline/vim-airline'

" Python async autocompletion
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
let g:jedi#completions_enabled = 0
" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Supertab for autocomplete
Plug 'ervandew/supertab'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Vim jsx highlighting and autoindent
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()
