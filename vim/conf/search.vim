
set ignorecase
set smartcase
set incsearch
set hlsearch
" Show matching brackets when text indicator is over them
set showmatch
set gdefault
set grepprg=ack
let g:grep_cmd_opts = '--noheading --nocolumn'
let g:ack_default_options = " -s -H --nopager --nocolor --nogroup --nocolumn"
"Force --nocolumn option for Ack plugin to be compatible with greplace behaviour, 
"https://raw.githubusercontent.com/mileszs/ack.vim/master/plugin/ack.vim
"let g:rooter_manual_only = 1
"let g:rooter_patterns = ['.git/']
"
" Required for portability between Mac and Linux of greplace use
set grepprg=ack
let g:grep_cmd_opts = '--noheading --nocolumn'
"Didn't work last time I try
"set grepprg=git\ grep
"let g:grep_cmd_opts = '--line-number'

noremap <Leader>cd :ProjectRootCD<CR>
noremap <Leader>a :ProjectRootCD<CR>:Ack <C-r><C-w><Space> 
noremap <Leader>A  :ProjectRootCD<CR>:Ack<Space>
map <C-a>     :Ack<Space>

nmap <silent> ,/ :nohlsearch<CR>
