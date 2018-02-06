
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap gp `[v`] 
nnoremap <Leader>ss :%s/\<<C-r><C-w>\>//<Left><Left>
"http://superuser.com/questions/220666/how-do-you-reuse-a-visual-mode-selection 
"You may re-select the last selected visual area with gv.
vnoremap <Leader>ss :s///<Left><Left>

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
" noremap  <C-s> :wa<CR>
" inoremap <C-s> <Esc>:wa<CR>
"http://vim.wikia.com/wiki/Format_pasted_text_automatically
"but modified for working with indented-based language like python
nnoremap p ]p

"http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-using-vim
vmap <C-c> "+y

noremap <leader>wf :w<CR>
"http://vim.wikia.com/wiki/Insert_current_date_or_time
"http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
nmap <Leader>td @='iTODO(FH,  <C-V><Esc>'<CR>"=strftime("\%x")<CR>P@='a):<C-V><Esc>'<CR>A
nmap <Leader>dd @='oDONE:<C-V><Esc>'<CR>A
nmap <Leader>fm @='iFIXME(FH,  <C-V><Esc>'<CR>"=strftime("\%x")<CR>P@='a):<C-V><Esc>'<CR>A
