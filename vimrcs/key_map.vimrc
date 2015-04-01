
"{{{1 快捷键 在插入模式下
"""""""""""""""""""""""""""""""""""""""
" Ctrl + H  行首
imap <C-h> <ESC>I
" Ctrl + J  下一行首
imap <C-j> <ESC>jI
" Ctrl + K  上一行末尾
imap <C-k> <ESC>kA
" Ctrl + L  末尾
imap <C-l> <ESC>A
" Quick insert mode exit
imap jk <Esc>
"}}}

" Tree of nerd  文件浏览侧边栏
nnoremap <Leader>n :NERDTreeToggle<CR>


"{{{1 vimrc 编辑支持
" """"""""""""""""""""""""""""""""""""""""

"重新读取 .vimrc
map <silent> <leader>ss :source ~/.vim/vimrc<cr>
"编辑 vimrc
map <silent> <leader>ee :e ~/.vim/vimrc<cr>
"编辑完vimrc文件后，重新载入该文件
autocmd! bufwritepost  vimrc source ~/.vim/vimrc
"}}}

"{{{ Key Maps
" Fast saving
nnoremap <Leader>w :w<CR>
vnoremap <Leader>w <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>

nnoremap <Leader>x :x<CR>
vnoremap <Leader>x <Esc>:x<CR>

" Stop that damn ex mode
nnoremap Q <nop>

" Quick nohl
nnoremap <Leader>h :nohl<CR>

" Line number type toggle
nnoremap <Leader>l :call LineNumberToggle()<cr>

" CtrlP
nnoremap <Leader>t :CtrlP getcwd()<CR>
nnoremap <Leader>f :CtrlPClearAllCaches<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>j :CtrlP ~/<CR>
nnoremap <Leader>p :CtrlP<CR>

" Instead of 1 line, move 3 at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Show hidden characters (spaces, tabs, etc)
nmap <silent> <leader>s :set nolist!<CR>

" PHPDoc commands
inoremap <C-d> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-d> :call PhpDocSingle()<CR>
vnoremap <C-d> :call PhpDocRange()<CR>

" Fugitive shortcuts
nnoremap <Leader>c :Gcommit -a<CR>i
nnoremap <Leader>g :Git
nnoremap <Leader>a :Git add %:p<CR>
"}}}


