syntax on

set fenc=utf-8
set history=60000

set background=dark
colorscheme desert

"----------------------
" ForGUI
set lines=56
set columns=108
set guioptions+=a
set guioptions+=R
"set guioptions-=m

" Display
set title
set wrap
set ruler
set laststatus=2
set cmdheight=2

" Indent
set autoindent
set smartindent
set shiftwidth=2
set showmatch

" Searching
set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" File treat
set nobackup
set noswapfile
set autoread
set hidden
set wildmode=list:longest

" Visual
set cursorline
set cursorcolumn
set showcmd

" Tab settings
set expandtab
set tabstop=2
set softtabstop=2

" Other settings
set noerrorbells
set backspace=indent,eol,start
set ambiwidth=double
set virtualedit=block

"----- HTML/XML tab complete ------
augroup MyXML
  autocmd!
    autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
      autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
      augroup END

" Keymapping
"----- Tab navigation ------
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>

" Plugin
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc.vim', {
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'open-browser.vim'

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
