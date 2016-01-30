" Enable pathogen
call pathogen#infect()

" Vim Basics
set enc=utf-8
set nu
syntax on
set showmode
set showcmd
set laststatus=2
set nocompatible
set scrolloff=20
set ttyfast
set ruler
set title

" Indentation
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set smartindent

" remap search result skipping to be sane
map n /<CR>

" end search intuitively
nnoremap <space> :nohl<CR>

"highlight search results well
hi Search cterm=NONE ctermfg=grey ctermbg=blue

" remap new tab creation to resemble a browser
nnoremap <C-t>     :tabnew<CR>
nnoremap = gt
nnoremap - gT

" highlight current line
set cursorline

" wildmenu for command line completion
set wildmenu
set wildmode=list,full

" make tabs visible
set listchars=tab:>-,trail:-
set list

" indent / outdent to nearest tabstops
set shiftround

" make backspace do the right thing
set backspace=indent,eol,start

" search
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

"stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Toggle Line Numbers
nnoremap <C-L> :set invnumber<CR>

" Save fast
nnoremap <C-e> :w<CR>
inoremap <C-e> <esc>:w<CR>

" Add support for copy pasting to other apps
set clipboard+=unnamed

" Open file and line number under cursor quickly
nnoremap <C-f> <C-w>gF<CR>

" Close current buffer
nnoremap <C-k> :q<CR>

" Ignore files
set wildignore+=.git,*.pyc

" Make the code fit
set winwidth=84
set colorcolumn=81
highlight ColorColumn ctermbg=black

" Set a leader that is easier to reach
let mapleader=","

" Project specific vimrc support
if filereadable("custom.vim")
    so custom.vim
endif

"Run external commands in a scratch buffer of size 10
command! -nargs=* -complete=shellcmd R 10new | setlocal buftype=nofile bufhidden=hide noswapfile | silent r !<args>

" Source vimrc file on save
autocmd BufWritePost .vimrc source $MYVIMRC

" Run previous command
nnoremap <Leader><Leader> :!!<CR>

" Load colorscheme
colorscheme molokai
let g:molokai_original = 1

" Support for syntastic pep8 and pyflakes. Remove warning for long line
let g:syntastic_python_checkers = ['pep8', 'pyflakes']
let g:syntastic_python_pep8_args = '--ignore=E501'
let g:syntastic_auto_loc_list = 1

" Recognize jinja files
au BufRead,BufNewFile *.jinja set filetype=jinja

nnoremap <Leader>r :!clear && cat % \| pbcopy && python %<CR>

" Make easy motion work like vimium(somewhat :( )
nnoremap F H:call EasyMotion#WB(0, 0)<CR>

" Ctrl P shortcut (More here http://kien.github.io/ctrlp.vim/)
let g:ctrlp_map = '<Leader>f'
