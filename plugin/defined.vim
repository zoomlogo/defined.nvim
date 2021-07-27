if exists('g:loaded_defined')
    finish
endif
let g:loaded_defined=1

let g:defined_italic = get(g:, 'defined_italic', 0)

if exists('g:defined_italics')
    hi Comment gui=italic
    hi Statement gui=italic
endif

