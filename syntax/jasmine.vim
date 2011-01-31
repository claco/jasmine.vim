if exists("b:current_syntax")
  finish
endif

runtime! syntax/javascript.vim

syn case match
syn keyword specFunctions afterEach beforeEach describe it expect addMatchers spyOn not
syn match specMatcher "to[A-Za-z0-9_]*"

hi def link specFunctions Special
hi def link specMatcher Special

let b:current_syntax = "jasmine"
