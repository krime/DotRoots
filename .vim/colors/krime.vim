" Vim color file
" Converted from my Textmate Code School theme using Coloration
" http://astonj.com

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "krime"

hi Cursor ctermfg=0 ctermbg=255 cterm=NONE guifg=#182227 guibg=#9ea7a6 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi LineNr ctermfg=15 ctermbg=236 cterm=NONE guifg=#84898c guibg=#2a343a gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#252c31 guibg=#252c31 gui=NONE
hi MatchParen ctermfg=227 ctermbg=NONE cterm=inverse guifg=#dda790 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f0f0f0 guibg=#575e61 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f0f0f0 guibg=#575e61 gui=NONE
hi Pmenu ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
hi IncSearch ctermfg=16 ctermbg=107 cterm=NONE guifg=#182227 guibg=#8bb664 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=inverse guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=11 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Folded ctermfg=240 ctermbg=16 cterm=NONE guifg=#9a9a9a guibg=#182227 gui=NONE

hi Normal ctermfg=255 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi Boolean ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Character ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Comment ctermfg=240 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi CommentStat ctermfg=240 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi Constant ctermfg=27 ctermbg=NONE cterm=underline guifg=#3c98d9 guibg=NONE gui=NONE
hi Define ctermfg=227 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f0f0f0 guibg=#43820d gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880708 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f0f0f0 guibg=#1c3657 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f0f0f0 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Function ctermfg=68 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi link Conditional Statement
hi link Keyword Statement
hi link Label Statement
" hi Label ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi NonText ctermfg=234 ctermbg=232 cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE
hi Number ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi link Operator Statement
hi PreProc ctermfg=68 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Include ctermfg=83 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Special ctermfg=28 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
hi SpecialComment ctermfg=22 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
hi SpecialConstant ctermfg=22 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
" hi SpecialKey ctermfg=227 ctermbg=23 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE
hi SpecialKey ctermfg=234 ctermbg=232 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE
hi Statement ctermfg=227 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi String ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi Todo ctermfg=15 ctermbg=NONE cterm=inverse,bold guifg=#9a9a9a guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=10 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Structure ctermfg=68 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Class ctermfg=62 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi CTagsDefinedName ctermfg=14 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi CTagsEnumeratorName ctermfg=27 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi link CTagsEnumerationValue Constant
hi CTagsType ctermfg=77 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi CTagsStructure ctermfg=82 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
" hi link CTagsStructure CTagsType
" hi link CTagsClass CTagsType
hi link CTagsData Normal
hi link CTagsField Normal
hi link CTagsVariable Normal
hi link CTagsValue Normal
hi link CTagsVal Normal
hi link CTagsVar Normal
hi link CTagsMember Normal
hi CTagsGlobalVariable ctermfg=255 ctermbg=NONE cterm=underline guifg=#bbbbbb guibg=NONE gui=NONE
hi rubyClass ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyFunction ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyConstant ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyInclude ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyControl ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyOperator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyException ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlAlias ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi cssURL ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssClassName ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssValueLength ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=151 ctermbg=NONE cterm=NONE guifg=#a7cfa3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
