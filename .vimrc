set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

set textwidth=120
set ts=2    " tabstop
set sw=2    " shiftwidth
set ht=2    " hardtab
set nu        " line numbering
set et    " don't convert tabs to spaces
set ai        " auto-indent
set smartindent
set fdc=4    " fold column width -- useful for click to close/open folds instead of zC, zO, etc.
set shell=bash\ --login
set vb " disable visual and auditory bells
set ci      " copyindent
set pi      " preserveindent
set sts=0   " softtabstop

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set linespace=1       " adds a pixel between each line
set history=50        " keep 50 lines of command line history
set ruler            " show the cursor position all the time
set laststatus=2     " shows white bar at bottom by default
set showcmd            " display incomplete commands
set incsearch        " do incremental searching

colorscheme vividchalk_andrew

" use Ctrl+n to toggle NERDTree
map =n :NERDTreeToggle<CR>
" have NERDTree open if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

" this shortens the pause for commands using <PLUG>
" the long delay is annoying sometimes
set timeoutlen=100

set foldmethod=marker
set foldlevel=0
