if exists("b:did_ftplugin") || &cp
  finish
endif

let b:did_ftplugin = 1

call jasmine#load_snippets()
