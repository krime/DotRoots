" Copyright (C) 2011 by Strahinja Markovic
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

if exists( 'g:loaded_operator_highlight' )
  finish
else
  let g:loaded_operator_highlight = 1
endif

if !exists( 'g:ophigh_color_gui' )
  let g:ophigh_color_gui = "white"
endif

if !exists( 'g:ophigh_color' )
  let g:ophigh_color = "white"
endif

if !exists( 'g:ophigh_color_operant_gui' )
  let g:ophigh_color_operant_gui = "white"
endif

if !exists( 'g:ophigh_color_bracket_gui' )
  let g:ophigh_color_bracket_gui = "white"
endif

if !exists( 'g:ophigh_color_operant' )
  let g:ophigh_color = "white"
endif

if !exists( 'g:ophigh_color_bracket' )
  let g:ophigh_color = "white"
endif

if !exists( 'g:ophigh_filetypes_to_ignore' )
  let g:ophigh_filetypes_to_ignore = {}
endif

fun! s:IgnoreFiletypeIfNotSet( file_type )
  if get( g:ophigh_filetypes_to_ignore, a:file_type, 1 )
    let g:ophigh_filetypes_to_ignore[ a:file_type ] = 1
  endif
endfunction

call s:IgnoreFiletypeIfNotSet('help')
call s:IgnoreFiletypeIfNotSet('markdown')
call s:IgnoreFiletypeIfNotSet('qf') " This is for the quickfix window
call s:IgnoreFiletypeIfNotSet('conque_term')
call s:IgnoreFiletypeIfNotSet('diff')
call s:IgnoreFiletypeIfNotSet('html')
call s:IgnoreFiletypeIfNotSet('css')
call s:IgnoreFiletypeIfNotSet('less')
call s:IgnoreFiletypeIfNotSet('xml')
call s:IgnoreFiletypeIfNotSet('sh')
call s:IgnoreFiletypeIfNotSet('bash')
call s:IgnoreFiletypeIfNotSet('notes')
call s:IgnoreFiletypeIfNotSet('jinja')

fun! g:HighlightOperators()
  if get( g:ophigh_filetypes_to_ignore, &filetype, 0 )
    return
  endif

  " for the last element of the regex, see :h /\@!
  " basically, searching for "/" is more complex since we want to avoid
  " matching against "//" or "/*" which would break C++ comment highlighting
  "
  " the old one
  """ syntax match OperatorOperant "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]\|/\(/\|*\)\@!"
  """ exec "hi OperatorChars guifg=" . g:ophigh_color_gui . " gui=NONE"
  """ exec "hi OperatorChars ctermfg=" . g:ophigh_color . " cterm=NONE"
  syntax match OperatorOperant "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|\.\|\/\(/\|*\)\@!"
  "syntax match OperatorBinary "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]\|/\(/\|*\)\@!"
  syntax match OperatorBracket "?\|)\|(\|{\|}\|\[\|\]\|/\(/\|*\)\@!"
  exec "hi OperatorOperant guifg=" . g:ophigh_color_operant_gui . " gui=NONE"
  exec "hi OperatorOperant ctermfg=" . g:ophigh_color_operant . " cterm=NONE"
  exec "hi OperatorBracket guifg=" . g:ophigh_color_bracket_gui . " gui=NONE"
  exec "hi OperatorBracket ctermfg=" . g:ophigh_color_bracket . " cterm=NONE"
endfunction

fun! g:NoHighlightOperators()
  if get( g:ophigh_filetypes_to_ignore, &filetype, 0 )
    return
  endif

  " for the last element of the regex, see :h /\@!
  " basically, searching for "/" is more complex since we want to avoid
  " matching against "//" or "/*" which would break C++ comment highlighting
  "
  exec "hi clear OperatorOperant"
  exec "hi clear OperatorBracket"
endfunction

au Syntax * call g:HighlightOperators()
au ColorScheme * call g:HighlightOperators()

command! HighlightOperators execute 'call g:HighlightOperators()'
command! NoHighlightOperators execute 'call g:NoHighlightOperators()'

