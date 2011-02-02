if exists("g:loaded_autoloadjasmine") || &cp
  finish
endif

let g:loaded_autoloadjasmine=1

if !exists("g:jasmine_use_templates")
  let g:jasmine_use_templates = 1
endif

function jasmine#directory()
  if !exists("g:jasmine_directory")
    for directory in pathogen#split(&rtp)
      if directory =~ "jasmine$"
        let g:jasmine_directory = directory
      endif
    endfor
  endif

  return g:jasmine_directory
endfunction

function jasmine#snippets_directory()
  if !exists("g:jasmine_snippets_directory")
    let g:jasmine_snippets_directory = jasmine#directory() . "/snippets"
  endif

  return g:jasmine_snippets_directory
endfunction

function jasmine#templates_directory()
  if !exists("g:jasmine_templates_directory")
    let g:jasmine_templates_directory = jasmine#directory() . "/templates"
  endif

  return g:jasmine_templates_directory
endfunction

function jasmine#load_snippets()
  if !exists("s:loaded_snippets")
    if exists("*ExtractSnips")
      call ExtractSnips(jasmine#snippets_directory(), "jasmine")
    end

    let s:loaded_snippets = 1
  endif
endfunction

function jasmine#configure_templates()
  if g:jasmine_use_templates && !exists("g:configured_templates")
    autocmd BufNewFile *Spec.js execute "0r".jasmine#templates_directory()."/Spec.js"
    autocmd BufNewFile *SpecHelper.js execute "0r".jasmine#templates_directory()."/SpecHelper.js"
    let g:configured_templates=1
  endif
endfunction
