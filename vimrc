"pathogen
"  execute pathogen#infect()
"  execute pathogen#helptags()
"  filetype plugin indent on

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
  set shiftwidth=4
  set softtabstop=4
  set tabstop=4
  set cindent
  set cinkeys=0{,0},!^F,o,O,e " default is: 0{,0},0),:,0#,!^F,o,O,e

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
  set number
  set relativenumber
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
nmap <F3> :NERDTreeToggle<cr>
imap <F3> <esc> :NERDTreeToggle<cr>

"rerun last command in a nother tmux pane
nnoremap <Leader>r :call <SID>TmuxRepeat()<CR>
inoremap <C-s> <Esc>:w<CR>:call <SID>TmuxRepeat()<CR>a
noremap  <C-s> :w<CR>:call <SID>TmuxRepeat()<CR>

function! s:TmuxRepeat()
    silent! exec "!tmux select-pane -l && tmux send up enter && tmux select-pane -l"
    redraw!
endfunction

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" diff mode
if &diff
  syntax off
endif

hi DiffAdd    ctermfg=none ctermbg=10   cterm=none
hi DiffDelete ctermfg=1    ctermbg=9    cterm=none
hi DiffChange ctermfg=none ctermbg=12   cterm=none
hi DiffText   ctermfg=14   ctermbg=none cterm=reverse
