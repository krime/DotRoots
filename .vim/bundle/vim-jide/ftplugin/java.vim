if !exists("g:JIDE_tags_home")
  let g:JIDE_tags_home = ""
endif

"TODO:parse project to find non standard prefix
let s:maven_prefix = "src/main/java"

function! GetImportSuggestions(classname)
   let files = sort(map(ListFileTag("^".a:classname."$", ["c","i"]), "v:val['filename']"))
   return map(files, "ConvertFileToQualifyedClass(v:val)")
endfunction

function! CheckIfSuggestionIsOnlyOneAndAlreadyExist(classname)
   let files = GetImportSuggestions(a:classname) 
   let nfiles = len(files)
   if nfiles == 1
      let import_suggestion = files[0]
      return search('^\s*import\s.*' . import_suggestion . '\s*;') > 0
   endif
   return 0
endfunction

function! CompleteImport(classname)
   let files = GetImportSuggestions(a:classname) 
   let nfiles = len(files)
   if nfiles == 1
      let import_suggestion = files[0]
      return import_suggestion
   else
      call complete(col('.'), files)
   endif
   return ''
endfunction

function! ListFileTag(tagname, kindList)
   let files = filter(taglist(a:tagname), 'index('.string(a:kindList).', v:val["kind"]) >= 0')
   return files 
endfunction

function! ConvertFileToQualifyedClass(filename)
   let jdk_home = $JDK_HOME."/src"
   "TODO: detect prefix for word (can be the project, the jdk or dependencies
   let fileNoPrefix = a:filename
   if a:filename =~ "^".jdk_home
      let fileNoPrefix = substitute(a:filename, "^".jdk_home,'','')
   elseif a:filename =~ "^".s:maven_prefix
      let fileNoPrefix = substitute(a:filename, "^".s:maven_prefix,'','')
   elseif a:filename =~ "^".g:JIDE_tags_home
     let fileNoPrefix = substitute(a:filename, "^".g:JIDE_tags_home,'','')
   endif
   let extension = "java"
   let fileNoPrefixNoExtension = substitute(fileNoPrefix, '.'.extension.'$', '', '')
   return substitute(fileNoPrefixNoExtension, '/','.','g')[1:]
endfunction

function! InsertPackage()
  let l:package = substitute(expand("%"),'^'.s:maven_prefix.'/','','')
  let l:filename = expand("%:t")
  let l:package = substitute(l:package,'/'.l:filename.'$','','')
  let l:package = substitute(l:package,'/','.','g')
  G
  call feedkeys("Opackage ".l:package.";\<CR>\<ESC>", 't')
endfunction

function! InsertImport()
   let word = expand("<cword>")
   if empty(word)
      echo "no class under cursor"
      return
   endif
   let save_cursor = getcurpos()
   "TODO: when no import found, search package keyword. If none found use 1G
   if !CheckIfSuggestionIsOnlyOneAndAlreadyExist(word)
      G
      call search("^\s*import","b")
      "feedkeys is executed at the end, so go back must be invoked inside feedkeys
      call feedkeys("oimport \<C-R>=CompleteImport('".word."')\<CR>", 't')
   else
      echo "class already imported"
      call setpos('.', save_cursor)
   endif
endfunction

noremap <Leader>ji :call InsertImport()<CR>
noremap <Leader>jp :call InsertPackage()<CR>
noremap <Leader>jc :make! compile<cr>
noremap <Leader>jm :make! package<cr>
noremap <Leader>jt :!ctags -R s:maven_prefix<CR> 

