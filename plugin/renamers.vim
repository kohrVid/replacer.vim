" ============================================================================
" Description: Commands for renaming files and directories in vim
" Author: Jessica Été <kohrVid@zoho.com>
" Licence: MIT license
" Last Modified:  28. November 2021
" ============================================================================

fun! s:RenameDirs(prev_name, new_name, path=".")
  call s:Rename(a:prev_name, a:new_name, a:path, "d")
endfun

fun! s:RenameFiles(prev_name, new_name, path=".")
  call s:Rename(a:prev_name, a:new_name, a:path, "f")
endfun

fun! s:Rename(prev_name, new_name, path, type)
  let idx = 0

  let old_paths = systemlist("find " . a:path . " -depth -name \"*" .
        \  a:prev_name . "*\" -type " . a:type)

  let old_and_new_paths = map(copy(old_paths), { _, path ->
    \ [
        \ path,
        \ system("echo " . path . "| sed s/" . a:prev_name . "/" . a:new_name . "/g")[:-2]
    \ ]
  \ })

  for old_and_new_path in old_and_new_paths
    echo "Rename " old_and_new_path[0] . " to " . old_and_new_path[1]
  endfor

  for old_and_new_path in old_and_new_paths
       call system("mv " . old_and_new_path[0] . " " . old_and_new_path[1])
  endfor

  echo "Done!"
endfun

command! -nargs=* RenameDirs call <SID>RenameDirs(<args>)
command! -nargs=* RenameFiles call <SID>RenameFiles(<args>)
