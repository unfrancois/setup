set nocompatible
syntax enable
set encoding=utf-8
set showcmd
"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir
" Set to auto read when a file is changed from the outside
set autoread 
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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'OmniCppComplete' "Disabled, conflict with youcompleteme
Plugin 'Tagbar'
Plugin 'bufexplorer.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
"Plugin 'code_complete' "Disabled, conflict with vim-snipmate
Plugin 'ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-eunuch'
Plugin 'SmartusLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'davidhalter/jedi-vim'
Plugin 'endel/vim-github-colorscheme'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'vim-scripts/eclipse.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'BenBergman/TagHighlight'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
"http://val.markovic.io/articles/a-vim-plugin-that-always-highlights-the-enclosing-tags#fnref:tags
Plugin 'Valloric/MatchTagAlways'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell.vim'
Plugin 'KevinGoodsell/vim-csexact'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'sickill/vim-monokai'
Plugin 'nvie/vim-flake8'
Plugin 'rodjek/vim-puppet'
Plugin 'szw/vim-g'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'raichoo/haskell-vim'
Plugin 'kshenoy/vim-signature'
Plugin 'hdima/python-syntax'
Plugin 'yegappan/greplace'
Plugin 'mjbrownie/browser.vim'
Plugin 'AndrewRadev/linediff.vim'
"Plugin 'airblade/vim-rooter'
Plugin 'dbakker/vim-projectroot'

"https://www.reddit.com/r/vim/comments/2sx567/snipmate_and_youcompleteme_doesnt_work_well/
"https://github.com/honza/vim-snippets/issues/363
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"
"Plugin 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType    = '<C-n>'
"let g:SuperTabCrMapping                = 0
"Plugin 'SirVer/ultisnips'
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plugin 'honza/vim-snippets'
Plugin 'eagletmt/ghcmod-vim'
"Install https://github.com/bitc/lushtags
Plugin 'bitc/lushtags'

call vundle#end() 

set statusline+=%{fugitive#statusline()}

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
"set guioptions-=L  "remove left-hand scroll bar

if has('gui_running')
    colorscheme PaperColor
    "colorscheme eclipse
    "colorscheme monokai
    "http://vi.stackexchange.com/questions/5032/gx-not-opening-url-in-gvim-but-works-in-terminal
    set background=light
    let g:netrw_browsex_viewer="setsid xdg-open"
else
    colorscheme default
endif

"set t_Co=16
"let g:solarized_termcolors=256
"
"set cursorcolumn
set cursorline

set mouse=a

"hi Normal guifg=#302C22 guibg=#F8F8F8
"http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
"http://www.64notes.com/design/stop-helvetica-arial/
"http://vim.wikia.com/wiki/The_perfect_programming_font
"http://stackoverflow.com/questions/2842078/how-do-i-detect-os-x-in-my-vimrc-file-so-certain-configurations-will-only-appl
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set guifont=Menlo:h13
  else
    set guifont=Monospace\ 10
  endif
endif

filetype plugin indent on
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

"http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set number
set ignorecase
set smartcase
set incsearch
set hlsearch
" Show matching brackets when text indicator is over them
set showmatch
set wildmenu
set wildmode=list:longest,full
set hidden
set laststatus=2
set wrap
set backspace=indent,eol,start
set noswapfile
set nobackup
set gdefault
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

set omnifunc=syntaxcomplete#Complete

set tags+=~/.vim/tags/cpp
set foldmethod=marker

"http://www.reddit.com/r/vim/comments/18r9fs/make_vim_look_like_sublime_text_2/c8hdhbv
set linespace=2

let mapleader=","
inoremap jk <Esc>
inoremap kj <Esc>
inoremap kl <Esc>
inoremap lk <Esc>
noremap <silent> <leader>kk :BufExplorer<CR>
noremap <silent> <leader>kl :e#<CR>
noremap <silent> <leader>lk :e#<CR>
noremap <silent> <leader>ee :NERDTreeToggle<CR>
noremap <silent> <leader>ef :NERDTreeFind<CR>
noremap <silent> <Leader>tt :TagbarToggle<CR>
noremap <silent> <Leader>cp :CtrlP 
noremap <Leader>cd :ProjectRootCD<CR>
noremap <Leader>a :ProjectRootCD<CR>:Ack <C-r><C-w><Space> 
noremap <Leader>A  :ProjectRootCD<CR>:Ack<Space>
map <C-a>     :Ack<Space>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap gp `[v`] 

let g:bufExplorerShowTabBuffer=1

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" map <C-f>     :NERDTreeToggle<CR>
" map <C-b>     :BufExplorer<CR>
" map <C-l>     :TagbarToggle<CR>
" noremap  <C-s> :wa<CR>
" inoremap <C-s> <Esc>:wa<CR>
" noremap  <C-q> :SaveSession<CR>:qa<CR>
" inoremap <C-q> <Esc>:SaveSession<CR>:qa<CR>

nnoremap <Leader>ss :%s/\<<C-r><C-w>\>//<Left><Left>

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" call make
"nnoremap <leader>mm :make<CR>
nnoremap <leader>mr :make run<CR>

" YouCompleteMe Goto definition/déclaration
nnoremap <leader>gd :YcmCompleter GoTo<CR>

" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"http://vim.wikia.com/wiki/Format_pasted_text_automatically
"but modified for working with indented-based language like python
nnoremap p ]p

"http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-using-vim
vmap <C-c> "+y

noremap <leader>wf :w<CR>

nmap <silent> ,/ :nohlsearch<CR>

"autocmd BufEnter *.md set spell spelllang=fr
autocmd BufEnter *.* :NERDTreeClose
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.pp set filetype=puppet

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

"http://vim.wikia.com/wiki/Insert_current_date_or_time
"http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
nmap <Leader>td @='OTODO(FH,  <C-V><Esc>'<CR>"=strftime("\%x")<CR>P@='a):<C-V><Esc>'<CR>A

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

"use :SyntasticCheck to do the checks
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_javascript_checkers = ['jslint']

let g:NERDTreeWinPos = "right"

"http://stackoverflow.com/questions/4385515/take-diff-of-two-vertical-opened-windows-in-vim
nnoremap <Leader>df :windo diffthis<CR>
nnoremap <Leader>dc :diffoff!<CR>
"let g:rooter_manual_only = 1
"let g:rooter_patterns = ['.git/']
"
" Required for portability between Mac and Linux of greplace use
set grepprg=ack
let g:grep_cmd_opts = '--noheading --nocolumn'
"Didn't work last time I try
"set grepprg=git\ grep
"let g:grep_cmd_opts = '--line-number'
