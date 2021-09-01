"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugin Settings                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.config/nvim

call plug#begin()
" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
" Remap Escape
inoremap hh <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Vim Settings                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab management
set splitbelow

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
let g:airline_theme='powerlineish theme'

" NERDtree Mapping
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-Left> gT
nnoremap <C-Right> gt
