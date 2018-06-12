
noremap <silent> <leader>kk :BufExplorer<CR>
let g:bufExplorerShowTabBuffer=1
noremap <silent> <leader>kl :e#<CR>
noremap <silent> <leader>lk :e#<CR>
autocmd BufEnter *.* :NERDTreeClose
let g:NERDTreeWinPos = "right"
noremap <silent> <leader>ee :NERDTreeToggle<CR>
noremap <silent> <leader>ef :NERDTreeFind<CR>
noremap <silent> <Leader>tt :TagbarToggle<CR>
noremap <silent> <Leader>cp :CtrlP 

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" map <C-f>     :NERDTreeToggle<CR>
" map <C-b>     :BufExplorer<CR>
" map <C-l>     :TagbarToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
