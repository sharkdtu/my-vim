"显示行号
set nu
"映射F5显示行号
"map <F5> <Esc>:set nu<CR>
"映射Ctrl+F5为不显示行号
"map <C-F5> <Esc>:set nonu<CR>

"语法高亮
syntax on

"去掉讨厌的有关vi一致性模式
set nocompatible

"tab 为4个空格
set tabstop=2

"当前行之间交错时使用4个空格
set shiftwidth=2

"用空格代替制表符
set expandtab

"自动对齐
set autoindent
set cindent

"智能选择对齐方式
set smartindent

"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

"高亮查询
set hlsearch

"编辑时显示光标状态
set ruler

"显示vim当前模式
set showmode

"快速匹配
set incsearch

"修改文件自动备份      
"if has("vms")  
"    set nobackup  
"else  
"    set backup  
"endif

"映射窗口调整快捷键
nmap > <c-w>>
nmap < <c-w><
nmap + <c-w>+
nmap - <c-w>-
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

"ctags设置
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
set tags=tags;
set autochdir

"cscope设置
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

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""插件设置""""""""""""""
"pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags
filetype plugin indent on

"NERDTree
nmap <F9> :NERDTreeToggle<CR>
" set mouse=a

"Tagbar
nmap <F8> :TagbarToggle<CR>

"neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_min_syntax_length=3

"Omnicppcomplete
set nocp

"vim-scala
let g:scala_sort_across_groups=1

