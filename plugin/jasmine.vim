if exists("g:loaded_jasmine") || &cp                                                                                      
  finish
end

let g:loaded_jasmine=1

call jasmine#configure_templates()

