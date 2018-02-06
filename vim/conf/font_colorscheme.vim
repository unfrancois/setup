
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
