" ============================================================================
" Description: Commands for finding and replacing file contents in vim
" Author: Jessica Été <kohrVid@zoho.com>
" Licence: MIT license
" Last Modified:  28. November 2021
" ============================================================================

fun! s:FindAndReplace(prev_term, new_term, path=".")
  let idx = 0

  let cmd = "find " . a:path . " -type f -not -path '*/\\.*' -exec sed -i 's/" .
        \ a:prev_term . "/" . a:new_term . "/g' {} +"

  let old_paths = systemlist(cmd)

  echo "Replaced instances of \"" . a:prev_term . "\" with \"" . a:new_term .
        \ "\" in " . a:path

  echo "Done!"
endfun

command! -nargs=* FindAndReplace call <SID>FindAndReplace(<args>)
