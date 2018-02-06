
filetype plugin indent on
set number
"http://www.reddit.com/r/vim/comments/18r9fs/make_vim_look_like_sublime_text_2/c8hdhbv
set linespace=2
set wrap
set backspace=indent,eol,start
set nolist
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
"set tabstop=4 "tell vim how many columns a tab counts for.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set smartcase
set smarttab
"set cindent         "Like smartindent, but stricter and more customisable

" Copy and paste to os clipboard
"http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set clipboard=unnamedplus
" https://github.com/begriffs/haskell-vim-now/blob/master/.vimrc
"nmap <leader>y "*y
"vmap <leader>y "*y
"nmap <leader>d "*d
"vmap <leader>d "*d
"nmap <leader>p "*p
"vmap <leader>p "*p
