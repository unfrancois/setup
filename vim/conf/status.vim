
let g:smartusline_hi_replace = 'guibg=#e454ba guifg=black ctermbg=58 ctermfg=black'
let g:smartusline_hi_insert = 'guibg=orange guifg=black ctermbg=magenta ctermfg=black'
let g:smartusline_hi_virtual_replace = 'guibg=#e454ba guifg=black ctermbg=58 ctermfg=black'
let g:smartusline_hi_normal = 'guibg=#95e454 guifg=black ctermbg=lightgreen ctermfg=black'
"hi Modified guifg=black guibg=#FFA500
"set statusline=%2.2n\ %t\ %h%#Modified#%m%r%*%=%l/%L\ %2c\ %P
"let g:smartusline_string_to_highlight = '%2.2n %t %h'
"let g:smartusline_string_to_highlight = '(%n) %f '
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline+=%{fugitive#statusline()}
set laststatus=2
