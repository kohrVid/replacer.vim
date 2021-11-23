" ============================================================================
" Description: Plugin used to rename folders
" Author: Jessica Été <kohrVid@zoho.com>
" Licence: MIT license
" Last Modified:  Nov 23, 2021
" ============================================================================
fun! s:RenameDirs(prev_name, new_name, path=".")
  let folders = []
  let idx = 0
  let old_dirs = systemlist("find " . a:path . " -depth -name \"*" . a:prev_name . "*\" -type d")
  let dirs = map(copy(old_dirs), { _, dir ->
    \ [
        \ dir,
        \ system("echo " . dir . "| sed s/" . a:prev_name . "/" . a:new_name . "/g")[:-2]
    \ ]
  \ })

  for pair in dirs
    echo "Rename " pair[0] . " to " . pair[1]
  endfor

  for pair in dirs
       call system("mv " . pair[0] . " " . pair[1])
  endfor

  echo "Done!"
endfun

command! -nargs=* RenameDirs call <SID>RenameDirs(<args>)
