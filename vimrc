"bundle设置
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
" pass a path where Vundle should install plugins
" The following are examples of different formats supported.
" plugin from GitHub repo https://github.com/tpope/vim-fugitive
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'EditPlus'
call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"补全插件，下载后要手动安装
Plugin 'Valloric/YouCompleteMe'

"自动补全括号,光标居中(要修改配置文件,把C-h改掉)
Plugin 'jiangmiao/auto-pairs'

"CtrlP插{件
:Plugin 'ctrlpvim/ctrlp.vim'

"配色插件
Plugin 'flazz/vim-colorschemes'

"目录树插件
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


"自动高亮语法
syntax on

"感知鼠标
set mouse-=a

"显示行号
set nu

"感知文件类型，开启缩进和插件
filetype plugin indent on

"tab宽度
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"设置配色方案
colorscheme Tomorrow-Night-Eighties

" Ctrl + K 插入模式下光标向上移动
imap <c-k> <Up>

" Ctrl + J 插入模式下光标向下移动
imap <c-j> <Down>

" Ctrl + H 插入模式下光标向左移动
imap <c-h> <Left>

" Ctrl + L 插入模式下光标向右移动
imap <c-l> <Right>

" Ctrl + f 光标跳转到行头
imap <c-b> <ESC>0i

" Ctrl + e 光标跳转到行尾
imap <c-e> <ESC>$a

" 全选
nmap <c-a> ggVG$
imap <c-a> <ESC>ggVG$
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"youcompleteme配置
"回车即选中当前项
inoremap <expr> <CR> pumvisible()? "\<C-y>" : "\<CR>"
"注释和字符串中的文字不会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion= 2
"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
