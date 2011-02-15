if exists("b:did_ftplugin") || &cp
  finish
endif

let b:did_ftplugin = 1

compiler jasmine
map <buffer> <leader>m :JasmineRedGreen<CR>

call jasmine#load_snippets()

command! JasmineRedGreen :call jasmine#redgreen()
command! JasmineMake :call jasmine#make()
