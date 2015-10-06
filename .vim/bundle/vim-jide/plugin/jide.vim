augroup vim_java
    autocmd!
    " highlight characters past column 120
    " autocmd FileType java highlight Excess ctermbg=DarkGrey guibg=Black
    " autocmd FileType java match Excess /\%120v.*/
    autocmd FileType java set makeprg=mvn\ -Dmaven.test.skip=true\ $*
    autocmd FileType java set errorformat=%E[ERROR]\ %f:[%l\\,%c]%m,%+C\ %#%.%#:%s,%-G%.%#
    "autocmd FileType java set makeprg=java\ -cp\ target/classes\ com.kings.marvel.core.HelloWorld\ 3>&-\ 3>&1\ 1>&2\ 2>&3\ \\\|\ sed\ ':loop;/^\\sat\\s/s@\\(\\w\\+\\)\\.@\\1/@;t\ loop;s@/\\w\\+(\\w\\+/@.@;s@)$@@;s@^\\(\\s\\+at\\s\\)\\(\\w\\+\\)@\\1'$PWD'/src/main/java/\\2@'
    "autocmd FileType java set errorformat=%EException\ in\ %m,%C%pat\ %f:%l,%Z,
    " autocmd FileType java set tags+=$JDK_HOME/.tags
augroup END
