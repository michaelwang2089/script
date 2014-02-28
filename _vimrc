set cindent
"set smartindent
"set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set cinoptions={0,:0,g0,l1,t0,(0
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
set backspace=indent,eol,start
if &t_Co > 2 || has("gui_running")
  syntax  on
  set hlsearch
  if has("gui_running")
    set background=light
  else
    set background=dark
  endif
endif
" set number for doing diffs and folding
" Show the current command in the lower right corner
set showcmd
set showmode
set ruler
set incsearch
set nocompatible
set history=50
set path+=/usr/include,/usr/include/sys,$HOME/include
set syntax=enable
syntax on
set ruler
"set nofoldenable
set incsearch
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
map <f6> :NERDTree<cr> 
map <f7> :Tlist<cr>
let Tlist_Use_Right_Window = 1

" text color 
syntax on

" in order 
set autoindent

" change insert mode to normal mode 
"imap jj <esc>
"imap JJ <esc>

" set line number
"set nu

" quick quit 
map ,, gg=G :q<CR>
map .. :q<CR>
map ,f :q!<CR>

" vim file  
map ,e :vsplit ~/.vimrc <cr>
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" colors
colorscheme desert 

" highlight search
set hlsearch
map ,n :nohl <cr>

" set tags
set tags=~/work/gserver/tags;
"set tags=~/studyspace/ACE_wrappers/tags;
"set autochdir

" next open file
set hidden
"map <Tab> :bn<CR>

" the line
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set laststatus=2

filetype plugin on
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
let g:load_doxygen_syntax=1

set dictionary+=~/.vim/dict/simple
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
" ic also has effect on dictionary settings
set ic 
"set hlsearch
set incsearch

" 
map <F10> :set paste<CR>
map <F11> :set nopaste<CR>

"
"set foldmethod=syntax
