if exists("b:did_ftplugin")
  finish
endif

if !exists("g:loaded_jasmine_snippets")
  call ExtractSnips("~/.vim/bundle/jasmine/snippets", "jasmine")
  let g:loaded_jasmine_snippets = 1
endif

let b:did_ftplugin = 1

