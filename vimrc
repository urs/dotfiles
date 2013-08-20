"pathogen
  execute pathogen#infect()
  execute pathogen#helptags()
  filetype plugin indent on

"general
  set nocompatible
  set nobackup
  set noswapfile
  set laststatus=2
  set encoding=utf-8
  set t_Co=256
  set nowrap
  set ttimeout
  set ttimeoutlen=100
  au VimLeave * if filereadable(".netrwhist")|call delete(".netrwhist")|endif

"indentation
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set cindent

"search
  set incsearch
  set hlsearch

"folding
  set foldenable
  set foldmethod=indent
  set foldlevel=999

"visual
  syntax on
  set background=dark
  colorscheme jellybeans
  set number
  set ruler
  set cc=78
  set cursorline
  set cursorcolumn
  set list
  set listchars=eol:¬,trail:.,tab:\|_
  set showmatch
  set showcmd
  set wildmenu

"folding/unfolding
noremap <space> @=((foldclosed(line(".")) < 0) ? 'zc' : 'zo')<cr>

"nerdtree
nmap <F2> :NERDTreeToggle<cr>
imap <F2> <esc> :NERDTreeToggle<cr>

