""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Copyright (C) 2011-2015, Touna.cn, Shenzhen Investment Financial Services Co.,Ltd., all rights reserved
" 
" This program is privacy software; you cannot redistribute it and/or
" modify it under the terms of the Touna.cn Privacy License
" as published by the Touna Shenzhen.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" FREEANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License
" along with this program; if not, write to the free Software
" Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @file           .vimrc
" @brief          Vim Configuration File
" @author         Krime Lam<krimelam@gmail.com>
" @version        v1.0.0.151007
" @date           Wed 07 Oct 2015 02:59:21 AM HKT
" @copyright      Copyright (C) 2011-2015, clicoder.com
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     o
"      o
"       /`ヘ、
"      (°、  7
"      )   °(
"      |ヘ ,~\\
"      じじf,,)ノ
"
"
"
"
"
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
" 
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" 
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
" Plugin 'SirVer/ultisnips'
" Plugin 'vim-scripts/taglist.vim'
" Plugin 'evanmiller/nginx-vim-syntax'
" Plugin 'scrooloose/nerdtree'
" Plugin 'mrtazz/DoxygenToolkit.vim'
" Plugin 'hari-rangarajan/CCTree'
" Plugin 'vim-scripts/FuzzyFinder'
" Plugin 'guns/xterm-color-table.vim'
" Plugin 'Valloric/vim-operator-highlight' 
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'git://git.code.sf.net/p/ccglue/git'
" 
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" This is Kingsley Lam's .vimrc file

set ts=2
set sts=2
set sw=2
set expandtab
" set nowrap
set nobackup
set noswapfile
set visualbell
set noerrorbells
set dir=~/tmp/vim
set listchars=tab:››,trail:·,eol:¶,extends:▶,precedes:◀
"set ambiwidth=double

" -- omnicppcomplete setting --
set tags+=$HOME/.vim/tags/c.tags
set tags+=$HOME/.vim/tags/cpp.tags
set tags+=$HOME/.vim/tags/posix.tags
set tags+=$HOME/.vim/tags/glib.tags
set tags+=$HOME/.vim/tags/gl.tags
set tags+=$HOME/.vim/tags/sdl.tags
set tags+=$HOME/.vim/tags/ompi.tags
set tags+=$HOME/.vim/tags/java.tags
set tags+=$HOME/.vim/tags/jetty.tags
set tags+=$HOME/.vim/tags/servlet-api.tags
set tags+=tags/ctags/tags
set tags+=tags/tags
" -- build tags of your own project with Ctrl-F12
map <C-F12> :!ctags --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -L config/list -f tags/ctags/tags
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,longest,preview,menu
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and include files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_ShowAccess = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_DefaultNamespaces=["std"]

" -- call pathogen#runtime_append_all_bundles() --
call pathogen#incubate()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
set bh=hide
" remember more commands and search history
set history=100000
set undolevels=100000
set nocp
set expandtab
set tabstop=2
"set ts=2
set shiftwidth=2
"set sw=2
set shiftround
set softtabstop=2
"set sts=2
set autoindent
set autowrite
set notextmode
set notextauto
set laststatus=2
set pastetoggle=<F2>
set showmatch
set matchtime=3
inoremap } }<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
inoremap ] ]<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
inoremap ) )<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
set hlsearch
set incsearch
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,GB18030,cp936,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos
" make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase
" highlight current line
set cursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=79
" This makes RVM work inside Vim. I have no idea why.
set shell=bash
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" use emacs-style tab completion when selecting files, etc
"set wildmode=longest,list:full
set wildmode=longest,full
" make tab completion for files/buffers act like bash
set wildmenu
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.class,*.swp,*.swo,*.pyc,*.elc,*.lib,*.ncb,*.opt,*.plg,.svn,.git,.hg,CVS
set wildignorecase
let mapleader=","
" Fix slow O inserts
:set timeout timeoutlen=1000 ttimeoutlen=100
" Show line numbers
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds in the group
  au!
  au FileType text setlocal textwidth=80
  " Jump to last cursor position unless it's invalid or in an event handler
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  "Some simple config 150803
  au FileType *      set formatoptions=tcql nocindent comments&
  au FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
  au FileType c,cpp  ab #d #define
  au FileType c,cpp  ab #i #include
  au FileType c,cpp  ab #b /*******************************************************************************
  au FileType c,cpp  ab #e *******************************************************************************/
  au FileType c,cpp  ab #l /******************************************************************************/

  "for ruby, autoindent with two spaces, always expand tabs
  au FileType perl,ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  au FileType python set sw=2 sts=2 et omnifunc=pythoncomplete

  au FileType javascript set omnifunc=javascriptcomplete
  au FileType html set omnifunc=htmlcomplete
  au FileType css set omnifunc=csscomplete
  au FileType xml set omnifunc=xmlcomplete
  au FileType php set omnifunc=phpcomplete

  au FileType c set omnifunc=ccomplete
  au FileType java set omnifunc=javacomplete#Complete

  au BufRead,BufNewFile *.sass setfiletype sass 

  au BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  au BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

  " Indent p tags
  au FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

  " Don't syntax highlight markdown because it's often wrong
  au FileType mkd setlocal syn=off

  " Leave the return key alone when in command line windows, since it's used
  " to run commands there.
  au CmdwinEnter * :unmap <cr>
  au CmdwinLeave * :call MapCR()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set t_Co=256 " 256 colors
" :set background=black
:color krime

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>y "*y
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>
" Can't be bothered to understand ESC vs <c-c> in insert mode
imap <c-c> <esc>
" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>
" Close all other windows, open a vertical split, and open this file's test
" alternate in it.
nnoremap <leader>s <c-w>o <c-w>v <c-w>w :call OpenTestAlternate()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SMART CLOSED BRACES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

function! ClosePair(char)
  if getline('.')[col('.')-1]==a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
command! PromoteToLet :call PromoteToLet()
map <leader>p :PromoteToLet<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EXTRACT VARIABLE (SKETCHY)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ExtractVariable()
    let name = input("Variable name: ")
    if name == ''
        return
    endif
    " Enter visual mode (not sure why this is needed since we're already in
    " visual mode anyway)
    normal! gv

    " Replace selected text with the variable name
    exec "normal c" . name
    " Define the variable on the line above
    exec "normal! O" . name . " = "
    " Paste the original selected text to be the variable value
    normal! $p
endfunction
vnoremap <leader>rv :call ExtractVariable()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INLINE VARIABLE (SKETCHY)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InlineVariable()
    " Copy the variable under the cursor into the 'a' register
    :let l:tmp_a = @a
    :normal "ayiw
    " Delete variable and equals sign
    :normal 2daW
    " Delete the expression into the 'b' register
    :let l:tmp_b = @b
    :normal "bd$
    " Delete the remnants of the line
    :normal dd
    " Go to the end of the previous line so we can start our search for the
    " usage of the variable to replace. Doing '0' instead of 'k$' doesn't
    " work; I'm not sure why.
    normal k$
    " Find the next occurence of the variable
    exec '/\<' . @a . '\>'
    " Replace that occurence with the text we yanked
    exec ':.s/\<' . @a . '\>/' . @b
    :let @a = l:tmp_a
    :let @b = l:tmp_b
endfunction
nnoremap <leader>ri :call InlineVariable()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC COMMAND-T TARGETS AND FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gr :topleft :split config/routes.rb<cr>
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 100 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! bundle exec rake -s routes
  " Size window to number of lines (1 plus rake output length)
  :exec ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map <leader>gR :call ShowRoutes()<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>a :call RunTests('')<cr>
map <leader>c :w\|:!script/features<cr>
map <leader>w :w\|:!script/features --profile wip<cr>

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    if match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename
    else
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        elseif filereadable("Gemfile")
            exec ":!bundle exec rspec --color " . a:filename
        else
            exec ":!rspec --color " . a:filename
        end
    end
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Md5 COMMAND
" Show the MD5 of the current buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -range Md5 :echo system('echo '.shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OpenChangedFiles COMMAND
" Open a split for each dirty file in git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenChangedFiles()
  only " Close all windows, unless they're modified
  let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
  let filenames = split(status, "\n")
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" InsertTime COMMAND
" Insert the current time
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['◆', '◇']
let g:tagbar_iconchars = ['◥', '◢']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/cscope_maps.vim
" set cscope program
set csprg=/opt/cscope/bin/cscope
" cscope tag search behavior, that means 'C-]' will use :cstag but not :tag
set cst
" set cscope tag load order, 0 means load cscope and ctags after
set csto=0
" set cscope verbose, which will display message while appending databases
set csverb
" set cscope path compact size with last 3 pattern, 0 means no compact
set cspc=3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldmethod=syntax
"set foldenable
"set foldlevel=0
"set foldnestmax=10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Doxygen Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:load_doxygen_syntax=1
"let g:doxygen_javadoc_autobrief=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Doxygen Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ophigh_color=15
let g:ophigh_color_operant=15
let g:ophigh_color_bracket=15

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Customize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/user/myDoxygen.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation Guide Character
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:Powerline_colorscheme = 'default'
let g:Powerline_colorscheme = 'coldfusion256'
" let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_stl_path_style = 'filename'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My configure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:Powerline_dividers_override = [ [0x252b], [0x2503], [0x2523], [0x250e,0x251a] ]
" let g:Powerline_symbols_override = {
" \   'BRANCH': [0x2523, 0x251b]
" \ , 'RO'    : 'RO'
" \ , 'FT'    : [0x2b62, 0x2b63]
" \ , 'LINE'  : 'LN'
" \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The original configure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:Powerline_dividers_override = [ [0x2b80], [0x2b81], [0x2b82], [0x2b83] ]
" let g:Powerline_symbols_override = {
" \   'BRANCH': [0xf020]
" \ , 'RO'    : [0x2b64]
" \ , 'FT'    : [0x2b62, 0x2b63]
" \ , 'LINE'  : [0x2b61]
" \ }

let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabulate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi TurboHeadCurrent ctermfg=226 ctermbg=24 cterm=bold
hi TurboHeadOthers ctermfg=248 ctermbg=236 cterm=underline
hi TurboHeadBarLine ctermfg=234 ctermbg=234

function! ShortTabLine()
  let ret = ''
  let lsp = ''
  let rsp = ''
  for i in range(tabpagenr('$'))
    " select the color group for highlighting active tab
    if i + 1 == tabpagenr()
      "let ret .= '%#TabLineSel#'
      let ret .= '%#TurboHeadCurrent#'
      let lsp = ' '
      let rsp = ' '
    else
      "let ret .= '%#TabLine#'
      let ret .= '%#TurboHeadOthers#'
      if i + 1 < tabpagenr() 
        let lsp = '┊'
        let rsp = ' '
      else
        let lsp = ' '
        let rsp = '┊'
      endif
    endif

    " find the buffername for the tablabel
    let buflist = tabpagebuflist(i+1)
    let winnr = tabpagewinnr(i+1)
    let buffername = bufname(buflist[winnr - 1])
    let filename = fnamemodify(buffername,':t')
    " check if there is no name
    if filename == ''
      let filename = 'noname'
    endif
    " only show the first 6 letters of the name  and
    " .. if the filename is more than 8 letters long
    if strlen(filename) >=8
      let ret .= lsp.filename[0:5].'..'.rsp
    else
      let ret .= lsp.filename.rsp
    endif
  endfor

  " after the last tab fill with TabLineFill and reset tab page #
  "let ret .= '%#TabLineFill#%T'
  let ret .= '%#TurboHeadBarLine#%T'
  return ret
endfunction

function! LongTabLine()
  let ret = ''
  let lsp = ''
  let rsp = ''
  for i in range(tabpagenr('$'))
    " select the color group for highlighting active tab
    if i + 1 == tabpagenr()
      "let ret .= '%#TabLineSel#'
      let ret .= '%#TurboHeadCurrent#'
      let lsp = ' '
      let rsp = ' '
    else
      "let ret .= '%#TabLine#'
      let ret .= '%#TurboHeadOthers#'
      if i + 1 < tabpagenr() 
        let lsp = '┊'
        let rsp = ' '
      else
        let lsp = ' '
        let rsp = '┊'
      endif
    endif

    " find the buffername for the tablabel
    let buflist = tabpagebuflist(i+1)
    let winnr = tabpagewinnr(i+1)
    let buffername = bufname(buflist[winnr - 1])
    let filename = fnamemodify(buffername,':~')
    " check if there is no name
    if filename == ''
      let filename = 'noname'
    endif
    " only show the first 6 letters of the name  and
    " .. if the filename is more than 8 letters long
    let ret .= lsp.filename.rsp
  endfor

  " after the last tab fill with TabLineFill and reset tab page #
  "let ret .= '%#TabLineFill#%T'
  let ret .= '%#TurboHeadBarLine#%T'
  return ret
endfunction

"set tabline=%!ShortTabLine()
set tabline=%!LongTabLine()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Simple gettext control
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit operations
"imap <c-j> <cr>
"imap <c-m> <cr>
"imap <c-h> <bs>
"imap <c-d> <del>
" Navigate operations
"imap <c-f> <right>
"imap <c-b> <left>
"imap <c-a> <home>
"imap <c-e> <end>
" Yank & Paste
"imap <c-u> <esc>d0s
"imap <c-k> <esc>Da
"imap <c-y> <esc>pa
"imap <c-t> <esc>xp

" Edit operations
"cmap <c-j> <cr>
"cmap <c-m> <cr>
cmap <c-h> <bs>
cmap <c-d> <del>
" Navigate operations
cmap <c-f> <right>
cmap <c-b> <left>
cmap <c-a> <home>
cmap <c-e> <end>
" Yank & Paste
" cmap <c-u> <esc>d0i
" cmap <c-k> <esc>Da
" cmap <c-y> <esc>pa
" cmap <c-t> <esc>xp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python-checker configuration: pyflake, pep8
" Ensure that these are set before Pathogen or Vundle are triggered.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @brief common coding style for python that can be totally ignored
" E1 Indentations
" E111 indentation is not a multiple of four
" E112 expected an indented block
" E113 unexpected indentation
" E114 indentation is not a multiple of four (comment)
" E115 expected an indented block (comment)
" E116 unexpected indentation (comment)
" E121 continuation line under-indented for hanging indent
" E122 continuation line missing indentation or outdented
" E123 closing bracket does not match indentation of opening bracket’s line
" E124 closing bracket does not match visual indentation
" E125 continuation line with same indent as next logical line
" E126 continuation line over-indented for hanging indent
" E127 continuation line over-indented for visual indent
" E128 continuation line under-indented for visual indent
" E129 visually indented line with same indent as next logical line
" E131 continuation line unaligned for hanging indent
" E133 closing bracket is missing indentation
"
" E2 Whitespaces
" E201 whitespace after bracket (/[/{
" E202 whitespace before bracket )/]/}
" E221 multiple spaces before operator
" E222 multiple spaces after operator
" E223 tab before operator
" E224 tab after operator
" E225 missing whitespace around operator
" E226 missing whitespace around arithmetic operator
" E227 missing whitespace around bitwise or shift operator
" E228 missing whitespace around modulo operator
" E231 missing whitespace after ‘,’, ‘;’, or ‘:’
" E241 multiple spaces after ‘,’
" E242 tab after ‘,’
" E251 unexpected spaces around keyword / parameter equals
" E261 at least two spaces before inline comment
" E262 inline comment should start with ‘# ‘
" E265 block comment should start with ‘# ‘
" E266 too many leading ‘#’ for block comment
" E271 multiple spaces after keyword
" E272 multiple spaces before keyword
" E273 tab after keyword
" E274 tab before keyword
"
" E3 Blank line
" E301 expected 1 blank line, found 0
" E302 expected 2 blank lines, found 0
" E303 too many blank lines (3)
" E304 blank lines found after function decorator
"
" E4 Import
" E401 multiple imports on one line
" E402 module level import not at top of file
"
" E5 Line length
" E501 line too long (82 > 79 characters)
" E502 the backslash is redundant between brackets
"
" E7 Statement
" E701 multiple statements on one line (colon)
" E702 multiple statements on one line (semicolon)
" E703 statement ends with a semicolon
" E704 multiple statements on one line (def)
" E711 comparison to None should be ‘if cond is None:’
" E712 comparison to True should be ‘if cond is True:’ or ‘if cond:’
" E713 test for membership should be ‘not in’
" E714 test for object identity should be ‘is not’
" E721 do not compare types, use ‘isinstance()’
" E731 do not assign a lambda expression, use a def
"
" E9 Runtime
" E901 SyntaxError or IndentationError
" E902 IOError
"
" W1 Indentation warning
" W191 indentation contains tabs
"
" W2 Whitespace warning
" W291 trailing whitespace
" W292 no newline at end of file
" W293 blank line contains whitespace
"
" W3 Blank line warning
" W391 Blankblank line at end of file
"
" W601 Deprecation warning
" W601 Deprecation.has_key() is deprecated, use ‘in’
" W602 deprecated form of raising exception
" W603 ‘<>’ is deprecated, use ‘!=’
" W604 backticks are deprecated, use ‘repr()’
let python_ignore_errors="E111,E114,E2,W501,W601"

" For Pep8
let g:pep8_ignore=python_ignore_errors
" For python-mode
let g:pymode_lint_ignore=python_ignore_errors

" For Syntastic
let g:syntastic_python_checker="flake8"
let g:syntastic_python_checker_args="--ignore=".python_ignore_errors
" For Newer Version Syntastic
let g:syntastic_python_checkers=["flake8"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sign operation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" define a highlight colour group for bookmarks
hi SignBookmarkCol ctermfg=15 ctermbg=21 cterm=bold guifg=DarkBlue
" guibg=#d0d0ff gui=bold
" define a bookmark / sign: just highlight the line
sign define SignBookmark text=<> linehl=SignBookmarkCol texthl=SignBookmarkCol
if (mapcheck("<leader>mm", "n")=='')
  nnoremap <silent> <unique> <leader>mm :exe 'sign place 1000 name=SignBookmark line='.line(".").' buffer='.winbufnr(0)<CR>
endif
if (mapcheck("<leader>mh", "n")=='')
  nnoremap <silent> <unique> <leader>mh :sign unplace 1000<CR>
endif
if (mapcheck("<leader>ml", "n")=='')
  nnoremap <silent> <unique> <leader>ml :sign list<CR>
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Showmarks operation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight ShowMarksHLl ctermfg=15 ctermbg=40 cterm=bold guifg=#ffffff guibg=#00ff00 gui=bold
"highlight ShowMarksHLu ctermfg=15 ctermbg=33 cterm=bold guifg=#ffffff guibg=#00ff00 gui=bold
"highlight ShowMarksHLo ctermfg=15 ctermbg=88 cterm=bold guifg=#ffffff guibg=#00ff00 gui=bold
"highlight ShowMarksHLm ctermfg=15 ctermbg=21 cterm=bold guifg=#ffffff guibg=#00ff00 gui=bold
"
"let g:showmarks_enable=0
"let g:showmarks_hlline_lower=1
"let g:showmarks_hlline_upper=1
"let g:showmarks_hlline_other=1
"let g:showmarks_textlower="[]"
"let g:showmarks_textupper="<>"
"let g:showmarks_textother="::"

let g:UltiSnipsExpandTrigger = '<c-x><c-t>'
let g:UltiSnipsListSnippets = '<c-x><c-l>'
let g:UltiSnipsJumpForwardTrigger = '<c-x><c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-x><c-k>'

let g:xptemplate_key = '<c-\>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SQL Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ftplugin_sql_omni_key = '<c-s>'
augroup vimSQL
  au!
  au FileType sql syn clear
  au FileType sql so ~/.vim/syntax/sql.vim
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSP Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimJSP
  au!
  au FileType jsp syn clear
  au FileType jsp so ~/.vim/syntax/jsp.vim
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Doxygen Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimDOX
  au! Syntax {cpp,c,idl,java,jsp,sql}
  au Syntax {cpp,c,idl,java,jsp,sql} runtime syntax/doxygen.vim
  au BufNewFile,BufRead *.doxygen setfiletype doxygen
augroup END

inoremap <c-g><c-v> <esc>:exe 'r ! ctags --format=1 -u --java-kinds=f -f - % \| sed "/\(public\|static\|final\)/d" \| $HOME/.vim/jide/getsetfields.pl'<cr>
inoremap <c-g><c-c> <esc>:exe 'r ! echo -en '.expand('%:t:r')<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimMD
  au!
  au bufread,bufnewfile *.md set filetype=markdown syntax=markdown
augroup end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize=20
let g:NERDTreeShowLineNumbers=0
let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
"autocmd vimenter * NERDTree
map <f3> :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JIDE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:JIDE_tags_home = $HOME."/.vim/tags"

highlight QuickFix cterm=bold,underline term=none ctermbg=none
augroup vimQuickFix
  au!
  au BufReadPost quickfix match QuickFix /\%1l/
  au BufReadPost quickfix nnoremap <buffer> <CR> :execute 'match QuickFix /\%' . line('.') . 'l/'<CR><CR>
augroup end

"command run !
"set ep="astyle -v -c --mode=c -xG -w -A14 -s2 -z2 %"

let mapleader=","
iab @@ krimelam@gmail.com
iab ccopy Copyright (C) 2015-2016, trapg.com.

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

onoremap <leader>n( :<c-u>normal! f(vi(<cr>
onoremap <leader>l( :<c-u>normal! F)vi(<cr>

augroup vimOPMap
  au!
  "au BufRead onoremap <leader>n( :<c-u>execute normal! f(vi(<cr>
  "onoremap <leader>l( :<c-u>normal! F)vi(<cr>
augroup end
