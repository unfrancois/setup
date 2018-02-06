
syntax enable
"autocmd BufEnter *.md set spell spelllang=fr
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.pp set filetype=puppet
set encoding=utf-8
"use :SyntasticCheck to do the checks
"let g:syntastic_mode_map = { 'mode': 'passive' }
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['flake8', 'pylint']
"let g:syntastic_javascript_checkers = ['jslint']
