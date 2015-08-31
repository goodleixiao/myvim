myvim
=====


安装
====

在终端中输入以下命令:

    git clone git://github.com/goodleixiao/myvim.git ~/.vim

    git submodule init && git submodule update

    vim  // :BundleInstall

常用插件
==========

    authorinfo.vim  自动添加头部信息
    a.vim 头文件切换库
    calendar.vim    日历
    color_sample_pack.vim
    cscope_maps.vim
    c.vim
    fencview.vim
    php-doc.vim
    Rename2.vim
    restart.vim
    taglist.vim
    vimcdoc.vim
    winfileexplorer.vim
    winmanager.vim
    wintagexplorer.vim
    word_complete.vim

常用命令
================
<leader>ee 编辑vimrc文件
<leader>t  Ctrlp工具，打开搜索打开文件

A.vim
===========
 头/源文件切换命令

        :A 头文件／源文件切换
        :AS 分割窗后并切换头/源文件(切割为上下两个窗口)
        :AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
        :AT 新建Vim标签式窗口后切换
        :AN 在多个匹配文件间循环切换

将光标所在处单词作为文件名打开

        :IH 切换至光标所在文件
        :IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
        :IHV 垂直分割窗口后切换
        :IHT 新建标签式窗口后切换
        :IHN 在多个匹配文件间循环切换

快捷键操作

        <Leader>ih 切换至光标所在文件*
        <Leader>is 切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
        <Leader>ihn 在多个匹配文件间循环切换

ctrlp插件
=================

## Basic Usage
* Run `:CtrlP` or `:CtrlP [starting-directory]` to invoke CtrlP in find file mode.
* Run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in find buffer or find MRU file mode.
* Run `:CtrlPMixed` to search in Files, Buffers and MRU files at the same time.

Check `:help ctrlp-commands` and `:help ctrlp-extensions` for other commands.

##### Once CtrlP is open:
* Press `<F5>` to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
* Press `<c-f>` and `<c-b>` to cycle between modes.
* Press `<c-d>` to switch to filename only search instead of full path.
* Press `<c-r>` to switch to regexp mode.
* Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
* Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
* Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
* Use `<c-y>` to create a new file and its parent directories.
* Use `<c-z>` to mark/unmark multiple files and `<c-o>` to open them.

Run `:help ctrlp-mappings` or submit `?` in CtrlP for more mapping help.

* Submit two or more dots `..` to go up the directory tree by one or multiple levels.
* End the input string with a colon `:` followed by a command to execute it on the opening file(s):  
Use `:25` to jump to line 25.  
Use `:diffthis` when opening multiple files to run `:diffthis` on the first 4 files.

## Basic Options
* Change the default mapping and the default command to invoke CtrlP:

    ```vim
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    ```

* When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this variable:

    ```vim
    let g:ctrlp_working_path_mode = 'ra'
    ```

    `'c'` - the directory of the current file.  
    `'r'` - the nearest ancestor that contains one of these directories or files: `.git` `.hg` `.svn` `.bzr` `_darcs`  
    `'a'` - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.  
    `0` or `''` (empty string) - disable this feature.

    Define additional root markers with the `g:ctrlp_root_markers` option.

* Exclude files and directories using Vim's `wildignore` and CtrlP's own `g:ctrlp_custom_ignore`:

    ```vim
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
    ```

* Use a custom file listing command:

    ```vim
    let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
    let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
    ```

Check `:help ctrlp-options` for other options.

cscope_maps.vim
=====================

[ctrl+\]

    s：查找C代码符号
    g：查找本定义
    d：查找本函数调用的函数
    c：查找调用本函数的函数
    t：查找本字符串
    e：查找本egrep模式
    f：查找本文件
    i：查找包含本文件的文件
