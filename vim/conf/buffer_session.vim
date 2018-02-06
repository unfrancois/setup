
"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir
" Set to auto read when a file is changed from the outside
set autoread 
let g:session_autosave = 'yes'
let g:session_autoload = 'no'
set hidden
set noswapfile
set nobackup
if exists("g:confirm_quit") || &cp
    finish
endif
let g:confirm_quit = 1

if has("gui_running")
    function! ConfirmQuit(writeFile)
        if (a:writeFile)
            if (expand("#")=="")
                echo "Can't save a file with no name."
                return
            endif
            write
        endif

        let l:confirmed = confirm("Do you really want to quit?", "&Yes\n&No", 2)
        if l:confirmed == 1
            quit
        endif
    endfu

    cnoremap <silent> q<cr>  call ConfirmQuit(0)<cr>
    cnoremap <silent> wq<cr> call ConfirmQuit(1)<cr>
    cnoremap <silent> x<cr> call ConfirmQuit(1)<cr>
endif
" noremap  <C-q> :SaveSession<CR>:qa<CR>
" inoremap <C-q> <Esc>:SaveSession<CR>:qa<CR>
