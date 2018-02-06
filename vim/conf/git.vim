
nnoremap <Leader>gv :view /tmp/gitdiff<CR>
"Fugitive mappings
"http://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
"nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gc :Gcommit <CR>
"nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gt :Gcommit %:p<CR>
nnoremap <Leader>gf :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
"nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Ggrep<Space>
autocmd QuickFixCmdPost *grep* cwindow
nnoremap <Leader>gm :Gmove<Space>
"nnoremap <space>gb :Git branch<Space>
"nnoremap <space>go :Git checkout<Space>
"nnoremap <space>gps :Dispatch! git push<CR>
"nnoremap <space>gpl :Dispatch! git pull<CR>
nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
