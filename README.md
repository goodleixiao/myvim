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
