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

filetype on "检测文件类型
filetype indent on "针对不同的文件采取不同的缩进方式
filetype plugin indent on

set whichwrap=b,s,<,>,[,] "光标从行首和行末时可以跳到另一行去
set showmatch "设置匹配模式，显示匹配的括号 

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "重新打开文件时定位到上次的位置
"列出当前目录文件
map <F3> :tabnew .<CR> 

set incsearch "输入字符串就显示匹配点
set hlsearch "高亮查找结果
set cursorline " 突出显示当前行

map <F5> :call ExecFile()<CR>
func! ExecFile()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'py' 
		exec ":!python %" 
	elseif &filetype == 'sh'
		exec ":!chmod u+x %;./%"
	endif
endfunc
