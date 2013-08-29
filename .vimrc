set nocompatible " be iMproved
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" Syntax
Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
Bundle 'html5.vim'
Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'moin.vim'
Bundle 'python.vim--Vasiliev'
Bundle 'xml.vim'

" Color
"Bundle 'desert256.vim'
"Bundle 'Impact'
"Bundle 'matrix.vim'
"Bundle 'vibrantink'
"Bundle 'vividchalk.vim'
"Bundle 'molokai'

"plugin
"Bundle 'AutoComplPop'
Bundle 'The-NERD-tree'
"Bundle 'AutoClose--Alves'
Bundle 'Tagbar'
Bundle 'minibufexpl.vim'
Bundle 'The-NERD-Commenter'
"ZenCoding Speed html && css editing
"Bundle 'ZenCoding.vim'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'WebAPI.vim'
"Bundle 'Gist.vim'
"Bundle 'css_color.vim'
Bundle 'https://github.com/mattn/emmet-vim'
Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
Bundle 'https://github.com/kchmck/vim-coffee-script'
Bundle 'https://github.com/kien/rainbow_parentheses.vim'
"Bundle 'https://github.com/vim-scripts/AuthorInfo'
"Bundle 'https://github.com/mbbill/echofunc'
"Bundle 'https://github.com/vim-scripts/number-marks'
Bundle 'https://github.com/kevinw/pyflakes-vim'

Bundle 'asins/vimcdoc'

" Ftplugin
"Bundle 'python_fold'

" Indent
Bundle 'IndentAnything'
Bundle 'Javascript-Indentation'
"Bundle 'mako.vim--Torborg'
Bundle 'gg/python.vim'

filetype plugin indent on

"enable BackSpace
set backspace=indent,eol,start

"syntax high light  
syntax on

"设置帮助的语言为中文
set helplang=cn

"搜索高亮
set hlsearch
set incsearch

"80 word notice
"set colorcolumn=80

"show the line number  
set nu

"颜色主题设置
"set t_Co=256
"subime
"colorscheme molokai
"colorscheme desert256
"colorscheme freya

"设置当前行突出显示
set cursorline
hi CursorLine cterm=NONE  ctermbg=yellow ctermfg=green guibg=yellow guifg=green
"set cursorcolumn

"补全列表颜色
hi Visual ctermfg=darkblue ctermbg=white
hi PmenuSel ctermfg=gray ctermbg=darkblue
hi Pmenu ctermfg=blue ctermbg=gray
hi PmenuSbar ctermbg=5
hi PmenuThumb ctermfg=yellow
hi CursorLine ctermbg=blue
hi CursorColumn ctermbg=blue
hi TabLine cterm=none ctermfg=0 ctermbg=7


" 四个空格。
set tabstop=4
" 使用space代替tab.
set expandtab
" 自动缩进的宽度。
set shiftwidth=4
"将已存在的tab都转化为空格
"rettab
"解决shiftwidth和tabstop不等时的麻烦
set smarttab
"将tab显示为可见字符
set list listchars=tab:>-
"autocmd FileType c,cpp,h set shiftwidth=4 | set expandtab

"set show status on  
set ruler  
"set show mode on  
set showmode 

"set the autoindent on  
set autoindent
"set the c language indent format   
set cindent

"查找手册
autocmd FileType php set keywordprg=~/.vim/phpman
autocmd FileType js,css,html set keywordprg=~/.vim/man
map <F2> <S-K><CR>
map! <F2> <Esc><S-K><CR>a

"快速生成tag文件
map <F3> :! ctags -R --c-kinds=+p --fields=+S .<CR>
map! <F3> <Esc>:! <CR>

"快捷键设置
"WM
"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='FileExplorer|TagbarOpen'
"F9 --> WMToggle
"map <silent> <F9> :WMToggle<CR>
map <F8> :NERDTreeToggle<CR>
map! <F8> <Esc>:NERDTreeToggle<CR>
map <F9> :TagbarToggle<CR>
map! <F9> <Esc>:TagbarToggle<CR>

"only show the current TagList
let Tlist_Show_One_File=1
"if TagList is the last window, quit
let Tlist_Exit_OnlyWindow=1
"F9 --> Tlist
"map <silent> <F9> :Tlist<CR>
"方法列表放在屏幕的右侧
let Tlist_Use_inSize = 20
let g:tagbar_ctRight_Window=0
"让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=0

"映射全选 ctrl+a
map <C-A> ggVG
map! <C-A> <Esc>ggVG

"双击时高亮
map <2-LeftMouse> *
map! <2-LeftMouse> <c-o>*
"ctrl+鼠标左键跳转
map <C-LeftMouse> <C-]>
map! <C-LeftMouse> <Esc><C-]>
"光标设在为竖线
autocmd InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
autocmd InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
autocmd VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"鼠标使用微软习惯，支持右键菜单
"behave mswin
"支持鼠标
set mouse=nv

"自动补全方式：(使用逗号分隔)
"set complete=k,.,d,i

"   .    当前文件
"   b    已被装缓冲区,但是没有在窗口内的文件
"   d    在当前的文件中定义和由 #include 包含进来的文件
"   i    由 #include 包含进来的文件
"   k    由 dictionary 选项定义的文件
"   kfile    名为{file}的文件
"   t    标记(tags)文件
"   u    没有载入的缓冲区
"   w    在其他窗口中的文件

"设定自动补全字典(acp.vim 会自动打开字典搜索tags):
set dictionary+=~/.vim/dict/systags
set complete+=k
autocmd filetype h set dictionary=~/.vim/dict/systags
autocmd filetype c set dictionary=~/.vim/dict/systags
autocmd filetype cpp set dictionary=~/.vim/dict/systags
autocmd filetype cc set dictionary=~/.vim/dict/systags

"ctag
set tags+=./tags
"set tags+=~/.vim/dict/systags

"设置字典 ctrl+x;ctrl+k 模式会调用
" autocmd是设置文件类型的自动补全,ctrl+x;ctrl+o可以调用
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" 设置默认打开html等网页文件的自动补全
autocmd BufNewFile,BufRead *.html,*.htm,*.xml inoremap </ </<c-x><c-o>
" 指定某些类型新建文件时候的自动补全方式,例如js,更上面的那个设置略有不同
autocmd BufNewFile,BufRead *.js set omnifunc=javascriptcomplete#CompleteJS

" 自动补齐括号书名号引号等设置
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
inoremap ' ''<LEFT>
"inoremap " ""<LEFT>
inoremap ( ()<ESC>i
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunc

"latex
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

"设置NERDTreetagbar的宽度
let g:NERDTreeWinSize = 20
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width=30

"vimwiki
"let g:vimwiki_use_mouse=1
let g:vimwiki_list = [{'path':'~/Nutstore/VimWIKI',
			\'path_html':'~/Nutstore/VimWIKI/html',}]
let g:vimwiki_file_exts = 'c, cpp, wav, txt, h, hpp, zip, sh, awk, ps, pdf'
let g:vimwiki_camel_case = 0

"python config
filetype plugin indent on
au BufNewFile,BufRead *.py,*.pyw setf python
let g:pydiction_location='~/.vim/ftplugin/pydiction/complete-dict'

"CoffeeScript
"au BufWritePost *.coffee silent CoffeeMake!
"au BufWritePost *.coffee :CoffeeCompile watch vert

"JavaScript
au BufRead,BufNewFile *.js set syntax=jquery
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"Devhelp
let g:devhelpSearch=1
let g:devhelpSearchKey = '<F1>'
"let g:devhelpAssistant=1

"跨窗口copy/paste
nmap ,v "+p
vmap ,c "+yy
nmap ,c "+yy

"括号高亮 RainbowParentheses 插件
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"css Color show
let g:cssColorVimDoNotMessMyUpdatetime = 1

"原型提示：echofunc
let g:EchoFuncKeyNext='<C-n>'
let g:EchoFuncKeyPrev='<C-p>'

"定义源代码格式化
"map ,fc <Esc>:%!astyle --style=kr --indent=tab --indent-switches --indent-cases <CR>
"调用AStyle程序，进行代码美化
func CodeFormat()
	"取得当前光标所在行号
	let lineNum = line(".")
	if &filetype == 'c'
		exec "%! astyle -A3Lfpjk3NS"
	elseif &filetype == 'cpp'
		exec "%! astyle -A3Lfpjk3NS"
	elseif &filetype == 'java'
		exec "%! astyle -A2Lfpjk3NS"
	else 
		echo "Not Support".&filetype." FileType"
	endif
	exec lineNum
endfunc
"映射代码美化函数到Shift+f快捷键
map <S-F> <Esc>:call CodeFormat()<CR>

"stardict
nmap <C-\> :!sdcv "<cword>" <C-R>=expand("<cword>")<CR><CR>

"进行版权声明的设置
let g:vimrc_author='jouyouyun'
let g:vimrc_email='jouyouwen717@gmail.com'
let g:vimrc_homepage='http://jouyouyun.is-programmer.com'

"Deepin Template
autocmd BufNewFile *.c 0r ~/.vim/template/C.c
autocmd BufNewFile *.h 0r ~/.vim/template/H.h
autocmd BufNewFile *.py 0r ~/.vim/template/PY.py
autocmd BufNewFile *.sh 0r ~/.vim/template/shell.sh
autocmd BufNewFile *.cpp 0r ~/.vim/template/CPP.cpp
autocmd BufNewFile *.coffee 0r ~/.vim/template/coffee.coffee

nmap <F4> :AuthorInfoDetect<CR>

set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,default
