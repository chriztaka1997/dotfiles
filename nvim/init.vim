" Manual changes
" Set terminal font to Droid sans mono slashed ...
" Make sure character encoding to utf-8
" Download powerline fonts https://github.com/powerline/fonts
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugin Settings                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.config/nvim

call plug#begin()
" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Utilities
Plug 'scrooloose/nerdtree'

" Auto complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Editing
Plug 'scrooloose/nerdcommenter'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'sbdchd/neoformat'
Plug 'zchee/deoplete-jedi'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Vim Bindings                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Changing the leader key
let mapleader = ","

" Remap Escape
inoremap hh <Esc>
inoremap qq <Esc>

" saving
inoremap <Leader>s <Esc>:w<CR>

" Locally set spell checking
nnoremap <Leader>s :set spell spelllang=en_us<CR>
nnoremap <Leader>ss :set nospell<CR>

" CUSTOM NORMAL MODE MAPPING
" Adding empty line
nnoremap <Enter> o<Esc>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Delete a line
nnoremap <BS> dd

" Exiting a tab
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>eq :q!<CR>

" Replace word
nnoremap <Leader>r :%s/

" cancel search
nnoremap <Leader>/ :noh<CR>

" CUSTOM VISUAL MODE MAPPING
" Copy to clipboard
vnoremap <Leader>y "*y
vnoremap $ $h
vnoremap a <Esc>$

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Vim Settings                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab management
set splitbelow

" case insensitive
set ignorecase
set smartcase

" Syntax highlight
syntax on
filetype plugin indent on

" One tab is equal to 4 space
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Syntax Highlighting
syntax on

" Relative line number
set number
set relativenumber

" Does not release visual mode during block indentation
vnoremap < <gv
vnoremap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugin Settings                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Visual
set encoding=utf-8
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" NERDtree Mapping
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-Left> gT
nnoremap <C-Right> gt
