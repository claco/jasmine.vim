if exists("b:did_ftplugin")
  finish
endif

if !exists("g:loaded_jasmine_snippets")
  if exists("g:loaded_pathogen")

    if !exists("g:jasmine_snippets_dir")
      for dir in pathogen#split(&rtp)
        if dir =~ "jasmine$" && isdirectory(dir."/snippets")
          let g:jasmine_snippets_dir = dir."/snippets"
        endif
      endfor
    endif

    call ExtractSnips(g:jasmine_snippets_dir, "jasmine")
  end

  let g:loaded_jasmine_snippets = 1
endif

let b:did_ftplugin = 1

