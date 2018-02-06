
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
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'raichoo/haskell-vim'
Plugin 'kshenoy/vim-signature'
Plugin 'hdima/python-syntax'
Plugin 'yegappan/greplace'
Plugin 'mjbrownie/browser.vim'
Plugin 'AndrewRadev/linediff.vim'
"Plugin 'airblade/vim-rooter'
Plugin 'dbakker/vim-projectroot'
Plugin 'kburdett/vim-nuuid.git' "then comment in plugin nuuidgen to get uuid in **lowercase**!
"https://www.reddit.com/r/vim/comments/2sx567/snipmate_and_youcompleteme_doesnt_work_well/
"https://github.com/honza/vim-snippets/issues/363
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'w0rp/ale'
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

