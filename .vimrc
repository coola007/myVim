set nocompatible
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1
set helplang=cn
set nu
set cursorline              " 突出显示当前行
set ruler                   " 打开状态栏标尺i
set showcmd
set writebackup
set backupdir=~/vim.file.backup
if has("gui_running")
  set guifont=Consolas:h12
endif
set fileformat=unix 
"语言相关 启用了格式化高亮、行号显示，以及括号匹配、自动缩进等编辑功能
set linebreak " 英文单词在换行时不被截断
syntax enable
syntax on
set showmatch
set expandtab
set shiftwidth=2
" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python map <F12> :!python %<CR>

au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

set smarttab
set lbr
set tw=0
set ai "Auto indent
set si " Smart indet
set cindent " C-style indeting
set wrap

"颜色方案
colorscheme desert "darknight256
"标签页设置
set tabpagemax=18 "设置标签页数
set showtabline=0
set showtabline=1 "创建标签后才显示标签栏
"set showtabline=2 "总是显示标签栏
"------------------------------------------------------
" 标签页 命令介绍:
" :table filename 用标签页打开文件
" :tabnew filename 用标签页打开文件
" :tab split  用标签页打开当期编辑的文件
" :tabs 显示所有标签页，> 指示当前页，+ 显示修改未保存 
" :tabc 关闭当前标签页，功能等同于:q 
" :tabo 关闭所有标签页 
" :tabn 跳转后一个标签页 
" :tabp 跳转前一个标签页 
" :tabfirst 跳转第一个标签页 
" :tabr 跳转第一个标签页 
" :tablast 跳转最后一个标签页 
" :tabm 0/1/2 将当前标签页移动到第1/2/3个页面位置 
" :tabdo 对多个标签页同时执行命令，如 
" :tabdo %s/aaa/bbb/g 
" gt 跳转后一个标签页 
" gT 跳转前一个标签页
"------------------------------------------------------
"基本编辑设置
set history=400
set autoread
set mouse=a " Have the mouse enabled all the time:
"如果置位本选项,执行宏,寄存器和其它不通过输入的命令时屏
"幕不会重画.另外,窗口标题的刷新也被推迟.要强迫刷新,使用
" ":redraw".
set lz " Do not redraw, when running macros.. lazyredraw
set so=7 "(缺省为 0) 光标上下两侧最少保留的屏幕行数
set cmdheight=2 " The commandbar is 2 high

" set ignorecase " Ignore case when searching
set incsearch " 输入搜索内容时就显示搜索结果
set noerrorbells " No sound on errors.
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= "置空错误铃声的终端代码
set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
" hidden/hid  (缺省关闭) 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存

"如果关闭, "abandon" 放弃时卸载缓冲区.如果打开, "abandon"
"放弃时隐藏缓冲区.当然,如果缓冲区仍然在别的窗口里显示,
"它不会被隐藏.
"在缓冲区列表里移动的命令有时会隐藏缓冲区,即使关闭 "hidden"
"选项也是如此,条件是: 缓冲区被修改过, "autowrite" 关闭
"或者不能写入,并且使用 "!" 标志位.另见 "windows.txt"
"如果只想隐藏一个缓冲区,使用 "bufhidden" 选项.
":hide {command}" 为单个命令关闭本选项 ":hide".
set hid "  警告: 对隐藏缓冲区的修改很容易忘记. ":q!" 或 ":qa!" 时 三思而后行
"set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
"-------------------------------------------------------------------
" "whichwrap" / "ww"    (Vim 缺省: "b,s",Vi 缺省: "")
"使指定的左右移动光标的键在行首或行尾可以移到前一行
"或者后一行.连接这些字符,可以让所有指定的键都有此功能:
"       字符    键          模式
"       "b"    <BS>         普通和可视
"       "s"    <Space>      普通和可视
"       "h"    "h"          普通和可视 (不建议)
"       "l"    "l"          普通和可视 (不建议)
"       "<"    <Left>       普通和可视
"       ">"    <Right>      普通和可视
"       "~"    "~"          普通
"       "["   <Left>        插入和替换
"       "]"    <Right>      插入和替换
"只允许光标键进行回绕.
"如果移动键和删除和改变操作符一起使用时,<EOL> 也被看作一个
"字符.这使得光标跨过行尾时, "3h" 和 "3dh" 效果不同."这也适
"用于 "x" 和 "X",因为它们分别和 "dl" 以及 "dh" 相同.如果这
"么用,你可能想用映射 ":map <BS> X"来使退格"键删除光标之前的
"字符.
"如果包含 "l",位于行尾时如果在操作符之后使用它,不会移动到下
"一行.这样 "dl", "cl", "yl" 等都能正常工作.
"注意: 如果置位 "compatible",本选项被设为 Vi 的缺省值.相反,
"如果复位 "compatible",本选项被设为 Vim 的缺省值.
set whichwrap+=<,>,h,l
"-----------------------------------------------------------------
set magic                   " 设置魔术
"set guioptions-=T           " 隐藏工具栏
"set guioptions-=m           " 隐藏菜单栏
set smartindent             " 开启新时使用智能自动缩进
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=1            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set autochdir               " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on   " 开启插件
filetype plugin on
set backupcopy=yes          " 设置备份时的行为为覆盖

"set mat=4 " How many tenths of a second to blink
set hlsearch " Highlight search things

set nobackup " Turn backup off
set nowb
set noswapfile
" smart backspace
set backspace=start,indent,eol
" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"------------------------------------------------------
"--------------折叠区块--------------------------------
"折叠方法
"可用选项 "foldmethod" 来设定折叠方法.
"设置选项 "foldmethod" 为非 "manual" 的其它值时,所有的折叠都会被删除并
"且创建新的.如果设置成 "manual",将不去除已有的折叠.可以利用这一点来先
"自动定义折叠,然后手工调整.
"
"有 6 种方法来选定折叠:
"   "manual"    手工定义折叠
"   "indent"    更多的缩进表示更高级别的折叠
"   "expr"      用表达式来定义折叠
"   "syntax"    用语法高亮来定义折叠
"   "diff"      对没有更改的文本进行折叠
"   "marker"    对文中的标志折叠
"
"选取了折叠方式后,我们就可以对某些代码实施我们需要的折叠了,由于我使用
" "indent" 稍微多一些,故以它的使用为例:
"如果使用了 "indent"方式,vim会自动的对大括号的中间部分进行折叠,我们可
"以直接使用这些现成的折叠成果.
"在可折叠处(大括号中间):
"   "zc"    折叠
"   "zC"    对所在范围内所有嵌套的折叠点进行折叠
"   "zo"    展开折叠
"   "zO"    对所在范围内所有嵌套的折叠点展开
"   "[z"    到当前打开的折叠的开始处
"   "]z"    到当前打开的折叠的末尾处
"   "zj"    向下移动.到达下一个折叠的开始处.关闭的折叠也被计入.
"   "zk"    向上移动到前一折叠的结束处.关闭的折叠也被计入.”
"set foldenable              " 开始折叠
"set foldmethod=marker       " 设置语法折叠
"set foldcolumn=4            " 设置折叠区域的宽度
"setlocal foldlevel=3        " 设置折叠层数为
"set foldopen=all
"set foldclose=all           "设置为自动关闭折叠                            
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> "用空格键来开关折叠

"--------------------------------------------------
" "wildmenu" / "wmnu"   (缺省关闭) 命令行补全以增强模式运行
" {仅当编译时加入 "wildmenu" 特性才有效"
" "wildmenu" 打开时,命令行补全以增强模式运行,按下 "wildchar"
"通常是 <Tab>) 启动补全.这时,在命令行的上方显示可能的匹配,
" 然后高亮首个匹配 (如果有状态行,覆盖之).显示前项/后项匹配的
" 热键,如 <Tab> 或 CTRL-P/CTRL-N,移动高亮到合适的匹配上.
"
" 使用 "wildmode" 时,指定 "full" 会启用 "wildmenu" 模式.
" "longest" 和 "list" 则不会启动 "wildmenu" 模式.
"
" 如果多个匹配超过一行,在右侧显示 "<" 和/或在左侧显示 "<".需
" 要的话,滚动状态行.
"按下不用于选择补全项的键时,放弃 "wildmenu" 模式.
"
" "wildmenu" 激活时,下面的键有特殊含义:
"   "Left>" / "Right>"    选择前项/后项匹配 (类似于
"                           CTRL-P/CTRL-N)
"   "Down>"                文件名/菜单名补全中: 移进子目录
"                           和子菜单.
"   "CR>"                  菜单补全中,如果光标在句号之后:
"                           移进子菜单.
"   "Up>"                  文件名/菜单名补全中: 上移到父目
"                           录或父菜单.
"
"这使得控制台上有菜单可用 "console-menus"
"如果你喜欢 <Left> 和 <Right> 键移动光标而不是选择不同的匹
"配,用:
"   "cnoremap <Left> <Space><BS><Left>"
"   "cnoremap <Right> <Space><BS><Right>"
"
" "WildMenu" 高亮用于显示当前匹配 "hl-WildMenu"
set wildmenu
let mapleader = "`" 
let g:mapleader = "`"  
let g:C_MapLeader  = '`'

"------------------------------------
"Windows系统的换行符为/r/n,而Linux/Unix系统则为/n.因此,在Windows里编辑
"过的文本文件到了Linux/Unix里,每一行都会多出一个^M.
"命令中的 "^M" 是通过键入 <ctrl-v><enter> 或 <ctrl-v><ctrl-m> 生成的.
"可以在用以下命令清除该字符:
noremap <leader>m :%s//r//g<CR>
"------------------------------------

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"""""""""""""""""""""""""""""""""""""""""
"""""""""""""手动配置""""""""""""""""""""
" 安装插件配置说明都在这边!!!
"""""""""""""""""""""""""""""""""""""""""
"----------------------------------------------------------------
" plugin - taglist.vim
" 设置好 taglist 插件：
" => Plugin configuration
"----------------------------------------------------------------
nnoremap <silent><F4> :TlistToggle<CR>

let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Show_One_File = 1            " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         " 在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1       " 自动折叠当前非编辑文件的方法列表
let Tlist_Process_File_Always = 1
"-----------------------------------------------------------------

"-----------------------------------------------------------------
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
" NERDTree 进入目录类表 ? 查看帮助
"map <F10> :NERDTreeToggle<CR>
" F3 NERDTree 切
"-----------------------------------------------------------------
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

"-----------------------------------------------------------------
" plugin - NERD_commenter.vim   注释代码用的，
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
" 注：count参数可选，无则默认为选中行或当前行
" <leader>ca 在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
" <leader>cc 注释当前行
" <leader>cs 以”性感”的方式注释
" <leader>cA 在当前行尾添加注释符，并进入Insert模式
" <leader>cu 取消注释
" <leader>cm 添加块注释
" http://www.vim.org/scripts/script.php?script_id=1218
"-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看
let NERDTreeWinPos='left' "右边..
let NERDTreeWinSize=31
let NERDTreeWinChDirMode=1
autocmd bufenter * if(winnr("$")== 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"-----------------------------------------------------------------
" plugin - DoxygenToolkit.vim  由注释生成文档，并且能够快速生成函数标准注释
" http://www.vim.org/scripts/script.php?script_id=987
"-----------------------------------------------------------------
let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com"
let g:DoxygenToolkit_briefTag_funcName="yes"
map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>
map <leader>dc a /*  */<LEFT><LEFT><LEFT>

"-----------------------------------------------------------------
" plugin - bufexplorer.vim 这个插件可以帮助你轻松的在缓冲间调转。
" '\be' (normal open)  or 全屏方式查看全部打开的文件列表
" \bv 左右方式查看   \bs 上下方式查看
"-----------------------------------------------------------------

"-----------------------------------------------------------------
" plugin - vimExplorer 文件管理器
" :VE 打开文件管理器       tab: 在树、列表窗口切换  
" Enter: 树窗口开关目录    u: 列表中在预览窗口打开文件
" ;r 打开renamer插件
" http://www.vim.org/scripts/script.php?script_id=1950
"----------------------------------------------------------------

"----------------------------------------------------------------
" plugin - matchit.vim   对%命令进行扩展使得能在嵌套标签和语句之间跳转
" % 正向匹配      g% 反向匹配
" [% 定位块首     ]% 定位块尾
" http://www.vim.org/scripts/script.php?script_id=39
"----------------------------------------------------------------

"----------------------------------------------------------------
" plugin - mark.vim
" mark：给不同的单词高亮，表明不同的变量时很有用。
" http://www.vim.org/scripts/script.php?script_id=2666
" 说明:
" 使用virsual模式选中一段文本,按 ",hl" ，会高亮你所选中的文本；
" 使用 ",hr" 来输入一个正则表达式，这会高亮所有符合这个正则表达式的文本。
" 在高亮文本上使用 ",#" 或 ",*" 来上下搜索高亮文本。
" 在使用了",#" 或 ",*" 后，就可以直接输入 "#" 或 "*" 继续查找该高亮文本，直到你又用 # 或 * 查找了其它文本。
"----------------------------------------------------------------
nmap <silent> ,hl <Plug>MarkSet
vmap <silent> ,hl <Plug>MarkSet
nmap <silent> ,hh <Plug>MarkClear
vmap <silent> ,hh <Plug>MarkClear
nmap <silent> ,hr <Plug>MarkRegex
vmap <silent> ,hr <Plug>MarkRegex
" <leader>*  当前MarkWord的下一个  <leader>#  当前MarkWord的上一个
" <leader>/  所有MarkWords的下一个 <leader>?  所有MarkWords的上一个
"----------------------------------------------------------------

"----------------------------------------------------------------
" plugin - WinMove.vim
" WinMove：窗口移动插件（用得不多，挺好玩的，尤其是全屏后）
" http://www.vim.org/scripts/script.php?script_id=2576
"----------------------------------------------------------------
let g:wm_move_left  = "<A-h>"
let g:wm_move_right = "<A-l>"
let g:wm_move_up    = "<A-k>"
let g:wm_move_down  = "<A-j>"
"----------------------------------------------------------------

"-----------------------------------------------------------
"plugin - bookmarking.vim 一款VIM的可见书签 设置标记（标签）
" http://www.vim.org/scripts/script.php?script_id=3022
"-----------------------------------------------------------
" Usage: 
"  * <F3> / :ToggleBookmark - Set a bookmark at the current location. 
"  * <F4> / :PreviousBookmark - Jump to the closest bookmark earlier that the current location in the file. 
"  * <F5> / :NextBookmark - Jump to the closest bookmark later than the current location in the file. 
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - auto_mkdir.vim 自动创建目录插件，功能简单但很实用
" 解决下面的情况下报错的问题
" :w /home/asins/vim_plugin.txt 
" will fail with with E212 ("Can't open file for writing.") 
" http://www.vim.org/scripts/script.php?script_id=3352
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - mru.vim 记录最近打开的文件
"
" http://www.vim.org/scripts/script.php?script_id=521
"-----------------------------------------------------------
let MRU_File = $VIMFILES.'/_vim_mru_files'
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
"let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix 
"let MRU_Exclude_Files = '^c:\\temp\\.*'           " For MS-Windows
"let MRU_Include_Files = '\.c$\|\.h$' 
"let MRU_Use_Current_Window = 
"let MRU_Auto_Close = 0 
"let MRU_Max_Menu_Entries = 20
"let MRU_Max_Submenu_Entries = 15 

nmap <leader>f :MRU<CR>
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - surround.vim 快速替换、清除包围符号、标签
" e.g:
"  Old text                  Command     New text ~
"  "Hello *world!"           ds"         Hello world!
"  [123+4*56]/2              cs])        (123+456)/2
"  "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
"  if *x>3 {                 ysW(        if ( x>3 ) {
"  my $str = *whee!;         vlllls'     my $str = 'whee!';
"  "Hello *world!"           ds"         Hello world!
"  (123+4*56)/2              ds)         123+456/2
"  <div>Yo!*</div>           dst         Yo!
"  Hello w*orld!             ysiw)       Hello (world)!
" http://www.vim.org/scripts/script.php?script_id=1697
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - jsbeautify.vim 优化js代码，并不是简单的缩进，而是整个优化
" 
" 开始优化整个文件
" http://www.vim.org/scripts/script.php?script_id=2727
"-----------------------------------------------------------
nmap <silent> <leader>js :call g:Jsbeautify()<cr>

"-----------------------------------------------------------
" plugin - yankring.vim 寄存器可视操作
" 
" http://www.vim.org/scripts/script.php?script_id=1234
"-----------------------------------------------------------
map <leader>y :YRShow<cr>
"map <leader>yc :YRClear<CR>

"-----------------------------------------------------------
" plugin - javascript.vim JS语法着色组件和代码缩进
"
" http://www.vim.org/scripts/script.php?script_id=2765
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - actionscript.vim AS语法着色组件
"
" http://www.vim.org/scripts/script.php?script_id=1061
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - css.vim CSS颜色预览
"
" 注意: 需要安装在.vim/after/syntax目录下
" http://www.vim.org/scripts/script.php?script_id=1061
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - fuzzyfinder.vim 文件目录插件
" NERDTree类似
" 支持buffer,file,dir,tag,bookmark等一系列的查找模式
" 最近打开过的文件查找模式 mru模式
" tag查找模式,类似于Eclipse中的C-S-R功能,
" http://www.vim.org/scripts/script.php?script_id=1984
" 类似文件查询插件 LustyExplorer(好) Lookupfile 和
" Command-T (http://www.vim.org/scripts/script.php?script_id=3025)
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - Command-t.1.5.1.vba 文件目录插件
" vim command-1.5.1.vba 
" :so %
" cd ~/.vim/ruby/command-t   ruby extconf.rb   make
" http://www.vim.org/scripts/script.php?script_id=3025
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - autocomplpop.vim 自动补全插件
"
" http://www.vim.org/scripts/script.php?script_id=1879
" 缺少 L9 library 库 下载地址:
" http://www.vim.org/scripts/script.php?script_id=325
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - comnicppcomplete.vim 自动补全插件
" OmniCppComplete是在c和c++语言范畴内，对上述智能补全的增强版
" http://www.vim.org/scripts/script.php?script_id=1520 
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - neocomplcache.vim 自动补全插件
" 
" http://www.vim.org/scripts/script.php?script_id=2620
"-----------------------------------------------------------
let g:AutoComplPop_NotEnableAtStartup = 1
let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_EnableInfo = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_EnableSkipCompletion = 1
let g:NeoComplCache_SkipInputTime = '0.5'
let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
" <TAB> completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" snippets expand key
imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)

"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - multiple-cursors 类似submitlime-text多行编辑
" https://github.com/terryma/vim-multiple-cursors
"-----------------------------------------------------------
let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"let g:multi_cursor_exit_from_visual_mode=1 (Default: 1)
"let g:multi_cursor_exit_from_insert_mode=1 (Default: 1)
" Map start key separately from next key
"let g:multi_cursor_start_key='<F6>'
" Default highlighting (see help :highlight and help :highlight-link)
"highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
"highlight link multiple_cursors_visual Visual

"-----------------------------------------------------------

"-----------------------------------------------------------
" Plugin - checksysntax.vim javascript 常见语法错误检查
" 默认快捷方式<F5>
" http://www.vim.org/scripts/script.php?script_id=1431
"-----------------------------------------------------------
let g:checksyntax_auto = 0 " 不自动检查
"-----------------------------------------------------------

"------------------------------------------------------------
" php自动补全的
"au FileType php setlocal dict+=$VIMFILES/syntax/php_funclist.txt
"set dictionary+=$VIMFILES/syntax/php_funclist.txt
"set complete-=k complete+=k
"au FileType php call AddPHPFuncList()
"function! AddPHPFuncList()
"    set dictionary-=$VIMFILES/syntax/php_funclist.txt
"      dictionary+=$VIMFILES/syntax/php_funclist.txt
"    set complete-=k complete+=k
"endfunction
let PHP_autoformatcomment=1 " PHP缩进
"-----------------------------------------------------------
" phpdocmanaule php手册
" http://www.laruence.com/2010/08/18/1718.html
 "set runtimepath+="$VIMFILES/phpmanual/"
"-----------------------------------------------------------
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
"-----------------------------------------------------------

"-----------------------------------------------------------
" plugin - SuperTab.vim 智能tab插件
" https://github.com/ervandew/supertab
"-----------------------------------------------------------
let g:SuperTabDefaultCompletionType="<C-X><C-O>" "tab键自动补全
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式, 
" 还有其他的补全方式, 你可以看看下面的一些帮助: 
" :help ins-completion 
" :help compl-omni
let g:SuperTabRetainCompletionType=2 
" 0 – 不记录上次的补全方式 
" 1 – 记住上次的补全方式,直到用其他的补全命令改变它 
" 2 – 记住上次的补全方式,直到按ESC退出插入模式为止

"-----------------------------------------------------------

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
">>>>>>>>>>>>>>>>>>>>>>>快捷键<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 删除所有行未尾空格。快捷键f12
nmap <F12> :%s/[ \t\r]\+$//g<CR>

" Buffers操作快捷方式!切换文件 shirt+l.shift+h
nmap <S-L> :bnext<CR>
nmap <S-H> :bprevious<CR>
"nnoremap <C-RETURN> :next<CR>
"nnoremap <C-S-RETURN> :bprevious<CR>
"map <C-Tab> :bn<CR>
"map <S-Tab> :bp<CR>

nmap he <ESC>:%!xxd<cr>
nmap hx <ESC>:%!xxd -r <cr>

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

" Tab操作快捷方式!
nnoremap <C-TAB> :tabnext<CR>
nnoremap <C-S-TAB> :tabprev<CR>
" map tn :tabnext<cr>
" map tp :tabprevious<cr>
" map td :tabnew .<cr>
" map te :tabedit
" map tc :tabclose<cr>

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" 让 Tohtml 产生有 CSS 语法的 html
" syntax/2html.vim，可以用:runtime! syntax/2html.vim
let html_use_css=1

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
" 设置字典 ~/.vim/dict/文件的路径
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict




"-----------------------------------------------------------------
" plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。
" \m  mark or unmark the word under (or before) the cursor
" \r  manually input a regular expression. 用于搜索.
" \n  clear this mark (i.e. the mark under the cursor), or clear all highlighted marks .
" \*  当前MarkWord的下一个     \#  当前MarkWord的上一个
" \/  所有MarkWords的下一个    \?  所有MarkWords的上一个
"------------------------------------------------------------------

"--------------------------------------
"emmet-vim expanding abbreviations similar to emmet
" e.g: 'div>p#foo$*3>a' and type '<c-y>,'.
" http://blog.csdn.net/geekdonie/article/details/11640991
" https://raw.github.com/mattn/emmet-vim/master/TUTORIAL
"---------------------------------------------
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.




" return OS type, eg: windows, or linux, mac, et.st..
function! MySys()
    if has("win16") || has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has("unix")
        return "linux"
    endif
endfunction
" 用户目录变量$VIMFILES
if MySys() == "windows"
    let $VIMFILES = $VIM.'/vimfiles'
elseif MySys() == "linux"
    let $VIMFILES = $HOME.'/.vim'
endif

" 设定doc文档目录
let helptags=$VIMFILES.'/doc'

" 设置字体 以及中文支持
if has("win32")
    set guifont=Consolas:h12:cANSI
endif


""Syntastic.vim 包含很多语言的语法与编码风格检查插件只支持*nix系统，Windows
"在打开文件的时候检查
let g:syntastic_check_on_open=1
"phpcs，tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"
" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif

    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif
"------------------------------------------------------------

"------------------------------------------------------------
" vundle 说明 在线安装插件
" https://github.com/gmarik/vundle/blob/master/README.md#quick-start
" https://github.com/gmarik/vundle/blob/master/doc/vundle.txt#L128-134
"------------------------------------------------------------

"filetype off
"linux:
set rtp+=~/.vim/bundle/vundle/
"windows:
"set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIMFILES/bundle/')
"manange Vundle
 Bundle 'gmarik/vundle'
"filtype plugin indent on
"Bundle 'freya' "color"
 Bundle 'delimitMate.vim'
"python
Bundle 'kevinw/pyflakes-vim'
Bundle 'python.vim'
"comment use 'x else 'c
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
" Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'rstacruz/sparkup', {'rtp': 'vim'} 
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" " trying this 
" Bundle "YankRing.vim"
" Bundle "http://github.com/thinca/vim-quickrun.git"
" Bundle "http://github.com/thinca/vim-poslist.git"
" Bundle "http://github.com/mattn/gist-vim.git"
" Bundle "http://github.com/rstacruz/sparkup.git", {'rtp': 'vim/'}

" Programming
 Bundle "jQuery"
 Bundle "rails.vim"

" Snippets
" Bundle "http://github.com/gmarik/snipmate.vim.git"

" Syntax highlight
 Bundle "cucumber.zip"
 Bundle "Markdown"

" Git integration
 Bundle "git.zip"
 Bundle "fugitive.vim"

" (HT|X)ml tool
 Bundle "ragtag.vim"

" Utility
 Bundle "repeat.vim"
 Bundle "surround.vim"
 Bundle "SuperTab"
 Bundle "file-line"
 Bundle "Align"

" FuzzyFinder
 Bundle "L9"
 Bundle "FuzzyFinder"
 let g:fuf_modesDisable = [] "{{{
 nnoremap <silent> <LocalLeader>h :FufHelp<CR>
 nnoremap <silent> <LocalLeader>2  :FufFileWithCurrentBufferDir<CR>
 nnoremap <silent> <LocalLeader>@  :FufFile<CR>
 nnoremap <silent> <LocalLeader>3  :FufBuffer<CR>
 nnoremap <silent> <LocalLeader>4  :FufDirWithCurrentBufferDir<CR>
 nnoremap <silent> <LocalLeader>$  :FufDir<CR>
 nnoremap <silent> <LocalLeader>5  :FufChangeList<CR>
 nnoremap <silent> <LocalLeader>6  :FufMruFile<CR>
 nnoremap <silent> <LocalLeader>7  :FufLine<CR>
 nnoremap <silent> <LocalLeader>8  :FufBookmark<CR> 
 nnoremap <silent> <LocalLeader>*  :FuzzyFinderAddBookmark<CR><CR>
 nnoremap <silent> <LocalLeader>9  :FufTaggedFile<CR> }}}"

" Zoomwin
 Bundle "ZoomWin"
 noremap <LocalLeader>o :ZoomWin<CR>
 vnoremap <LocalLeader>o <C-C>:ZoomWin<CR>
 inoremap <LocalLeader>o <C-O>:ZoomWin<CR>
 noremap <C-W>+o :ZoomWin<CR>

" Ack
 Bundle "ack.vim"
 noremap <LocalLeader># "ayiw:Ack <C-r>a<CR>
 vnoremap <LocalLeader># "ay:Ack <C-r>a<CR>

" tComment
 Bundle "tComment"
 nnoremap // :TComment<CR>
 vnoremap // :TComment<CR>

" Command-T
" Bundle "git://git.wincent.com/command-t.git"
" let g:CommandTMatchWindowAtTop=1 " show window at top

" Navigation
" Bundle "http://github.com/gmarik/vim-visual-star-search.git"
"------------------------------------------------------------



"  php 中 一般是会在 “$”, “->”, “::” 后需要出现自动补全
" if !exists(‘g:AutoComplPop_Behavior’)
" let g:AutoComplPop_Behavior = {}
" let g:AutoComplPop_Behavior['php'] = []
" call add(g:AutoComplPop_Behavior['php'], {
" \ ‘command’ : “\\“,
" \ ‘pattern’ : printf(‘\(->\|::\|\$\)\k\{%d,}$’, 0),
" \ ‘repeat’ : 0,
" \})
" endif
"--------------------------------------------------------------
" 定义$VIMFILES变量
if has('unix')
    let $VIMFILES = $HOME.'/.vim'
else
    let $VIMFILES = $VIM.'/vimfiles'
endif

" 缺少 L9 library库问题:
" http://www.vim.org/scripts/script.php?script_id=3252

"-------------------------------------------------------------
" 自动生效保存vimrc
autocmd! bufwritepost _vimrc source %
