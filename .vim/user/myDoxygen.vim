" let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
" let g:DoxygenToolkit_paramTag_pre="@Param " 
" let g:DoxygenToolkit_returnTag="@Returns   " 
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
" let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 

augroup vimDoxyUtil
  autocmd FileType c,cpp,java,javascript,php call s:SetCommentDelimiters('/**', '*/', '*')
  autocmd FileType bash,csh,sh,perl,python,ruby,conf call s:SetCommentDelimiters('###############', '###############', '#')
  autocmd FileType haskell call s:SetCommentDelimiters('{-', '-}', '--')

  let g:DoxygenToolkit_authorName="Krime Lam<krimelam@gmail.com>" 
  let g:DoxygenToolkit_versionString="v1.0.0.".strftime("%y%m%d")
  let g:DoxygenToolkit_dateFormatString="%c"
  let g:DoxygenToolkit_copyrightString="Copyright (C) 2011-2015, Touna.cn, SHenzhen Investment Financial Services Co.,Ltd., all rights reserved"
  " let g:DoxygenToolkit_licenseTag="My own license"
  let s:freeLicenseTag = "Copyright (C) 2011-2015, TrapInGame, all rights reserved\<enter>\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "This program is free software; you can redistribute it and/or\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "modify it under the terms of the GNU General Public License\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "as published by the Free Software Foundation; either version 2\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "of the License, or (at your option) any later version.\<enter>\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "This program is distributed in the hope that it will be useful,\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "but WITHOUT ANY WARRANTY; without even the implied warranty of\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "GNU General Public License for more details.\<enter>\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "You should have received a copy of the GNU General Public License\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "along with this program; if not, write to the Free Software\<enter>"
  let s:freeLicenseTag = s:freeLicenseTag . "Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA."
  let g:DoxygenToolkit_licenseTag=printf("%s", s:freeLicenseTag)

  let s:merchLicenseTag = "Copyright (C) 2011-2015, Touna.cn, Shenzhen Investment Financial Services Co.,Ltd., all rights reserved\<enter>\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "This program is privacy software; you cannot redistribute it and/or\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "modify it under the terms of the Touna.cn Privacy License\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "as published by the Touna Shenzhen.\<enter>\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "This program is distributed in the hope that it will be useful,\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "but WITHOUT ANY WARRANTY; without even the implied warranty of\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "FREEANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "GNU General Public License for more details.\<enter>\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "You should have received a copy of the GNU General Public License\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "along with this program; if not, write to the free Software\<enter>"
  let s:merchLicenseTag = s:merchLicenseTag . "Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA."
  let g:DoxygenToolkit_licenseTag=printf("%s", s:merchLicenseTag)
augroup END

function s:SetCommentDelimiters(startTag, endTag, blockTag)
  let l:commentWrap = 80
  let g:DoxygenToolkit_startCommentTag      = a:startTag." "
  let g:DoxygenToolkit_startCommentBlock    = a:startTag.repeat(a:blockTag,l:commentWrap/len(a:blockTag))." "
  let g:DoxygenToolkit_endCommentTag        = a:endTag
  let g:DoxygenToolkit_endCommentBlock      = repeat(a:blockTag,commentWrap/len(a:blockTag)).a:endTag
  let g:DoxygenToolkit_interCommentTag      = a:blockTag." "
  let g:DoxygenToolkit_interCommentBlock    = a:blockTag." "
endfunction

