syntax on

set fenc=utf-8
set history=60000

set background=dark
colorscheme desert

" ForGUI
set lines=56
set columns=108
set guioptions+=a
set guioptions+=R

set title
set smartindent
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set wrap
set wrapscan

set nobackup
set noswapfile
set autoread
set noerrorbells

set cursorline
set cursorcolumn
set ruler
set showcmd
set laststatus=2
set cmdheight=2

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start
set ambiwidth=double
set virtualedit=block
set wildmode=list:longest
set hidden

" メニューバーを非表示にする
" set guioptions-=m

" HTML/XML閉じタグ自動補完
augroup MyXML
  autocmd!
    autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
      autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
      augroup END
