" 测试
" 备份配置
if has("vms")
	set nobackup
else
	set backup
endif

"设置一个快捷键
let mapleader = ","

set modelines=0 " CVE-2007-2438


" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


" 智能对齐
set smartindent

" 自动对齐
set autoindent

" Tab键的宽度
set tabstop=4

"  统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 搜索逐字符高亮
set hlsearch
set incsearch

" 行内替换
set gdefault

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

" 语言设置
set langmenu=zn_CN.UTF-8
set helplang=cn

" 命令行（在状态行）的高度，默认为1,这里是2
set cmdheight=2

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 总是显示状态行
set laststatus=2

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set showcmd

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 高亮显示对应的括号
set showmatch

" 对应括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在切换buffer时自动保存当前文件
set autowrite

" 增强模式中的命令行自动完成操作
set wildmenu

" 字符间插入的像素行数目
set linespace=2


" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。
set whichwrap=b,s,<,>,[,]

"==================自定义的键映射======================
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>


