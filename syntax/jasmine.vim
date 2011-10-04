if exists("b:current_syntax")
  finish
endif

if &ft =~ "coffee"
  runtime! syntax/coffee.vim
else
  runtime! syntax/javascript.vim
endif

syn case match
syn keyword specFunctions afterEach beforeEach describe it expect addMatchers spyOn not context
syn keyword specDisabled xit xdescribe
syn keyword specSpys andCallThrough andReturn andThrow andCallFake callCount argsForCall mostRecentCall
syn keyword specAsync runs waits waitsFor
syn match specMatcher "to[A-Za-z0-9_]*"
syn keyword specjQuery loadFixtures readFixtures setFixtures sandbox clearCache cleanUp

hi def link specFunctions Special
hi def link specDisabled Error
hi def link specMatcher Special
hi def link specSpys Special
hi def link specAsync Special
hi def link specjQuery Special

let b:current_syntax = "jasmine"
