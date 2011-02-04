if exists("current_compiler")
  finish
endif

let current_compiler = "jasmine"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=rake "$*"
CompilerSet errorformat=\ %#%f(%l\\\,%c):\ %m
