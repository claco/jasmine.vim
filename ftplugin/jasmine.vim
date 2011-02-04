if exists("b:did_ftplugin") || &cp
  finish
endif

let b:did_ftplugin = 1

compiler jasmine
map <buffer> <leader>m :Jasmine<CR>

call jasmine#load_snippets()

command! Jasmine :call jasmine#run_tests()
