set number

" Custom leader commands
let mapleader=","

syntax on
filetype plugin indent on
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Make double-<Esc> clear search highlights
nnoremap <silent><leader>n <Esc>:nohlsearch<CR><Esc>
nnoremap <silent> <C-A> <Esc>:NERDTreeToggle<CR><Esc>
set pastetoggle=<C-x>

" search python functions
map <leader>f :g/^\s*def<CR>

"Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" folding
" set foldmethod=indent
set foldlevel=2
highlight Folded ctermbg=Black ctermfg=Red
nnoremap <space> za

call plug#begin()
	Plug 'pangloss/vim-javascript'
	Plug 'preservim/nerdtree'
	Plug 'dense-analysis/ale'
	Plug 'tmhedberg/SimpylFold'
	Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
	Plug 'Vimjas/vim-python-pep8-indent'
	Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'cjrh/vim-conda'
	"Plug 'davidhalter/jedi-vim'
	"Plug 'python-mode/python-mode'
call plug#end()
let g:ale_enabled = 1
let g:SimpylFold_fold_docstring = 0
let b:SimpylFold_fold_docstring = 0
let g:conda_startup_msg_suppress = 1
let g:coc_node_path = '/usr/local/bin/node'

" YouCompleteMe settings
nnoremap <leader>k :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>l :YcmCompleter GoToDefinition<CR>
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_max_num_candidates = 10
let g:ycm_min_num_of_chars_for_completion = 1
highlight Pmenu ctermfg=Blue ctermbg=Black

" Prevent YouCompleteMe from hijacking arrow key
inoremap <expr> <up> pumvisible() ? '<c-e><up>' : '<up>'
