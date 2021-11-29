#!/bin/sh

scriptDir=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")

if [ -f $scriptDir/tmp.txt ]
then
  rm $scriptDir/tmp.txt
fi

cat $scriptDir/../README.md | sed '/<!-- vim-markdown-toc GFM -->/,/<!-- vim-markdown-toc -->/d' >> $scriptDir/tmp.txt

md2vim -cols 75 $scriptDir/tmp.txt $scriptDir/replacer.vim.txt
rm $scriptDir/tmp.txt

