set nu
set nocompatible
set incsearch
set hlsearch
set ruler
set showmode
syntax on

" auto indent 2 space
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cindent
set smartindent
set smarttab

" match parentheses
set mps+=<:>
set showmatch
set matchtime=1

" auto parentheses
imap () ()<ESC>i
imap {} {}<ESC>i
imap [] []<ESC>i
imap <> <><ESC>i
imap "" ""<ESC>i
imap '' ''<ESC>i
imap <F3> <ESC>la


" map windows shift
nmap > <c-w>>
nmap < <c-w><
nmap + <c-w>+
nmap - <c-w>-
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" ctags
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
set tags=tags;
set autochdir

"  auto backup     
"if has("vms")  
"    set nobackup  
"else  
"    set backup  
"endif 

" auto load cscope files
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
nmap <C-c> :cs find c <C-R>=expand("<cword>")<CR><CR>

""""""""""""Plugins""""""""""""""
" Vundle
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'dkprice/vim-easygrep'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'uguu-org/vim-matrix-screensaver'
call vundle#end()
filetype indent on

" NERDTree
nmap <F9> :NERDTreeToggle<CR>
" set mouse=a

" Tagbar
nmap <F8> :TagbarToggle<CR>

" vim-scala
let g:scala_sort_across_groups=1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" ycm
let mapleader=','
let g:ycm_show_diagnostics_ui=0
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
nmap <F4> :YcmDiags<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
