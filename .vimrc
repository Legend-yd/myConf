"******************************************************
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

"设置包括vundle和初始化相关的runtime path

call plug#begin('~/.vim/bundle')

" 让vundle管理插件版本,必须
Plug 'VundleVim/Vundle.vim'

"目录树
Plug 'scrooloose/nerdtree' 

"文件跳转
Plug 'kien/ctrlp.vim'

"自动补全
Plug 'Valloric/YouCompleteMe'

"状态条样式
Plug 'bling/vim-airline'

"增加缩进竖线
Plug 'Yggdroot/indentLine'

"使用ag的搜索引擎，ack进行展示
Plug 'rking/ag.vim'

"文件搜索
Plug 'mileszs/ack.vim'

"自动注释
Plug 'scrooloose/nerdcommenter'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

"go代码支持
Plug 'fatih/vim-go'

"git提交记录查看
Plug 'zivyangll/git-blame.vim'

Plug 'zxqfl/tabnine-vim' " AI自动补全

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin

" 你的所有插件需要在下面这行之前
call plug#end()         " 必须
"加载vim自带和插件相应的语法和文件类型相关脚本

" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall       - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

"********************************************************
"                   一般性配置                          *
"********************************************************

"不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

"语法高亮
syntax on

"在底部显示处于什么模式
set showmode

"命令模式下，在底部显示，当前键入的指令`
set showcmd

"支持鼠标
set mouse=r

"使用utf-8编码
set encoding=utf-8  

"使用256色
set t_Co=256

"开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
filetype indent on

"按下回车后这一行缩进与上一行保持一致
set autoindent

"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=4

"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab

"Tab 转为多少个空格。
set softtabstop=2

"***********************************************************
"*                    外观设置             		   *
"***********************************************************

" colorscheme用于选择配色方案 
colorscheme molokai 

"显示行号
set number

"显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set relativenumber

"光标所在的当前行高亮。
set cursorline

"光标所在列高亮
set cursorcolumn

"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

"设置行宽，即一行显示多少个字符
set textwidth=160

"自动折行，即太长的行分成几行显示
set wrap
"set nowrap

"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak

"指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2

"垂直滚动时，光标距离顶部/底部的位置（单位：行）。
set scrolloff=5

"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

"在状态栏显示光标的当前位置（位于哪一行哪一列）。
set  ruler

"**************************搜索相关***************************

"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch

"搜索时，高亮显示匹配结果。
set hlsearch

"输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch

"搜索时忽略大小写
set ignorecase

"如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set smartcase

"打开英语单词拼写检查
"set spell spelllang=en_us,cjk

"保留撤销历史
set undofile

" 解决插入模式下delete/backspce键失效问题
set backspace=2

"设置备份文件、交换文件、操作历史文件的保存位置。
"结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名
set backupdir=~/.vim/.backup//  
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo// 

"出错时，不要发出响声。
set noerrorbells

"出错时闪烁
set visualbell

"记住多少次历史操作
set history=1000

"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php write

"if exists('$TMUX')
 "set term=screen-256color
"endif

"if exists('$TMUX')
    "let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    "let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
"else
    "let &t_SI = "\e[5 q"
    "let &t_EI = "\e[2 q"
"endif

"if exists('$ITERM_PROFILE')
  "if exists('$TMUX') 
    "let &amp;t_SI = "<Esc>[3 q"
    "let &amp;t_EI = "<Esc>[0 q"
  "else
    "let &amp;t_SI = "<Esc>]50;CursorShape=1x7"
    "let &amp;t_EI = "<Esc>]50;CursorShape=0x7"
  "endif
"endif

"NERDTree Settings{
  map tt :silent! NERDTreeToggle<CR>
 " autocmd vimenter * NERDTree  "自动开启Nerdtree
  "当NERDTree为剩下的唯一窗口时自动关闭
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  let NERDTreeWinPos ="left"             "将NERDTree的窗口设置在gvim窗口的左边
  let NERDTreeShowBookmarks=1            "当打开NERDTree窗口时，自动显示Bookmarks
  let NERDChristmasTree=1                "让树更好看,
  let NERDTreeWinSize=25                 "设置宽度
"}

"vim-go Setting{
"go中一些高量打开
  "let g:go_auto_sameids = 1
  let g:go_version_warning = 1
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_build_constraints = 1

  "let g:go_def_mode = 'gopls'
  let g:go_def_mode = 'godef'
  let g:go_def_reuse_buffer = 2
  let g:go_fmt_command = "goimports"               "自动导入包
  let g:go_list_type = "quickfix"

  let g:go_def_mapping_enabled = 1

  "打开新页面跳转
  au FileType go nmap gf <Plug>(go-def-tab)
  autocmd FileType go nmap <leader>r <Plug>(go-run)
  autocmd FileType go nmap <leader>t <Plug>(go-test)

  let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
  let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"}


"git插件 git-blame Settings{
  nnoremap <Leader>g  :GitBlame<CR>
"}

" 快捷键映射{
"切换vim窗口的前缀
  map ff <C-w>
"向上移动一行
  noremap <S-C-k> :m-2<CR>
"向下移动一行
  noremap <S-C-j> :m+1<CR>
  noremap qq :q<CR>
  noremap mm :GoImports<CR>

"nerdtree的按键映射
  map <C-n> :tabnew<CR> "创建新的tab页
  map <C-l> :tabn<CR>
  map <C-h> :tabp<CR>

  noremap fv y/<C-r>0<CR>
  map ## a//yd todo<ESC> "记录todo
  map todo /yd todo<CR>
  "}
  "
  ""ack.vim Settings{
"let g:ag_working_path_mode="r"  "默认从根目录查找
"-i 忽略大小写
    map fd :Ack!<CR>
"map fd :Ack!<space>-i<space> 
"空白搜索默认搜索当前单词
    let g:ack_use_cword_for_empty_search = 1
"使用ag作为搜索引擎
    if executable('ag')
          let g:ackprg = 'ag --nogroup --nocolor --column'
    endif
"}

"高亮搜索关键词
let g:ackhighlight = 1
"修改快速预览窗口高度为15
let g:ack_qhandler = "botright copen 15"
"在QuickFix窗口使用快捷键以后，自动关闭QuickFix窗口
let g:ack_autoclose = 1
"使用ack的空白搜索，即不添加任何参数时对光标下的单词进行搜索，默认值为1，表示开启，置0以后使用空白搜索将返回错误信息
let g:ack_use_cword_for_empty_search = 1
""部分功能受限，但对于大项目搜索速度较慢时可以尝试开启
"let g:ack_use_dispatch = 1

"}
"
"YouCompleteMe Settings {
"set runtimepath+=~/.vim/bundle/YouCompleteMe
"let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
"let g:ycm_complete_in_comments = 1
"let g:ycm_confirm_extra_conf = 0
""let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
"nnoremap <M-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 "从第2个键入字符就开始罗列匹配项
let g:ycm_error_symbol = 'xx'
let g:ycm_warning_symbol = '>*'
let g:ycm_max_num_candidates = 10  "最长候选集"
"}

let g:go_version_warning = 0
autocmd InsertLeave * se nocul  " 用浅色高亮当前行 
autocmd InsertEnter * se cul"

highlight PMenu ctermfg=105 ctermbg=195
