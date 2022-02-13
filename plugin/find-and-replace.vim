" ============================================================================
" Description: Commands for finding and replacing file contents in vim
" Author: Jessica Été <kohrVid@zoho.com>
" Licence: MIT license
" Last Modified:  13. February 2022
" ============================================================================

fun! s:FindAndReplace(prev_term, new_term, path=".")
  let idx = 0

  let cmd = "find " . a:path . " -type f -not -path '*/\\.*' -exec sed -i 's/" .
        \ s:EscapeChars(a:prev_term) . "/" . s:EscapeChars(a:new_term) . "/g' {} +"

  let old_paths = systemlist(cmd)

  echo "Replaced instances of \"" . a:prev_term . "\" with \"" . a:new_term .
        \ "\" in " . a:path

  echo "Done!"
endfun

fun! s:EscapeChars(str)
  let subs = {'/': '\\/', '\': '\\'}
  let output = a:str

  for i in keys(l:subs)
    let output = substitute(l:output, i, l:subs[i], "g")
  endfor

  return output
endfun

command! -nargs=* FindAndReplace call <SID>FindAndReplace(<args>)
