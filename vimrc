set background=dark "背景使用黑色
colorscheme ron
set encoding=utf-8 "设置编码方式
set ruler "设置在编辑过程中右下角显示光标的行列信息
set showcmd "在状态栏显示正在输入的命令
set history=1000 "设置历史记录条数

set tabstop=4 "设置tab宽度
set shiftwidth=4 "设置自动对齐空格数
set smarttab " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度

syntax on
syntax enable "开启语法高亮功能

set autoindent "设置C/C++方式自动对齐
set cindent "设置C/C++方式自动对齐
set smartindent "智能对齐方式

set whichwrap=b,s,<,>,[,] "光标从行首和行末时可以跳到另一行去
set showmatch "设置匹配模式，显示匹配的括号 

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "重新打开文件时定位到上次的位置
"列出当前目录文件

set incsearch "输入字符串就显示匹配点
set hlsearch "高亮查找结果
set cursorline " 突出显示当前行

""""""""""""""""""IDE SUPPORT""""""""""""""""""""""""
"1.setup vundle for plugin management(pathogon is ok)
"2.install nerdtree for file management
"3.ctags/cscope for c/c++ funtion lookup
"""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""vundle setup"""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
"filetype on "检测文件类型
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""NERDTree setup""""""""""""""""""""""""
"execute pathogen#infect() 
"让NERDTRee在打开vim时自动开启
autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w 

"F3显示或者隐藏目录窗口
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"F8 切换到前一个tab
nnoremap <F7> gT
"F9 切换到后一个tab
nnoremap <F8> gt

"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""ctags setup"""""""""""""""""""""""""
map <F10> <ESC>g<C-]>
map <F9> <ESC><C-T>
""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype indent on "针对不同的文件采取不同的缩进方式
nmap <F12> <ESC><C-w>l
nmap <F11> <ESC><C-w>h
