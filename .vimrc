set nocompatible

execute pathogen#infect('bundle/{}', 'syntax/bundle/{}')
filetype plugin indent on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
else
    set term=xterm-color
endif

set textwidth=78
set ts=2    " tabstop
set sw=2    " shiftwidth
set ht=2    " hardtab
set nu        " line numbering
set et    " don't convert tabs to spaces
set ai        " auto-indent
set smartindent
set fdc=4    " fold column width -- useful for click to close/open folds instead of zC, zO, etc.
set dir=~/.vim/swp    " store swap files in a specific directory -- keeps working directories clean
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


" this shortens the pause for commands using <PLUG>
" the long delay is annoying sometimes
set timeoutlen=1000 " default: 1000

set foldmethod=marker
set foldlevel=0

" this part automatically prepends * to lines inside of a comment block and
" following a line starting with /*
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set formatoptions+=r

" command-line completion
set wildmenu

" personal shortcuts
let mapleader = "="
" =w : remove whitespace from ends of lines
nnoremap <leader>w :%s/\s\+$//<CR>
" =t : replace all tab characters with two spaces
nnoremap <leader>t :%s/\t/  /g<CR>
" =n : toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" have NERDTree open if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif
nnoremap <leader>ra <ESC>A #{{{<ESC>
nnoremap <leader>rb <ESC>A #}}}<ESC>
" NOTE: can't get the following to work...
"nnoremap <leader>rf <ESC>A #{{{<ESC>0 % A #}}}<ESC>

" use Alt+Tab to use UltiSnips
let g:UltiSnipsExpandTrigger="<M-tab>"

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \     exe "normal g`\"" |
      \ endif

  " ensure proper filetype for odd extensions
  au BufRead *.as set filetype=actionscript       " vim is the best IDE for flash  :)
  au BufRead *.ctp set filetype=php               " CakePHP templates
  au BufRead *.tpl.html set filetype=smarty       " smarty templates
  au BufRead *.mako.html set filetype=mako        " mako templates
  au BufRead *.cshtml set filetype=razor          " razor templates
  au BufRead *.tag set filetype=jsp               " java server pages templates
  au BufRead,BufNewFile *.rabl set filetype=ruby  " RABL templates

endif " has("autocmd")

" " Use Tabular automatically when 
" inoremap <buffer> <silent> > ><Esc>:call <SID>tabular_align()<CR>A
" inoremap <buffer> <silent> : :<Esc>:call <SID>tabular_align()<CR>A
" inoremap <buffer> <silent> = =<Esc>:call <SID>tabular_align()<CR>A
" function! s:tabular_align()
"     "let p = '^\s*\w+\s*[(=>)|:|=].*$'
"     let p = '^\s*\w+\s*:.*$'
"     let lineContainsHashrocket = getline('.') =~# '^\s*\w+\s*:'
"     let hashrocketOnPrevLine = getline(line('.') - 1) =~# p
"     let hashrocketOnNextLine = getline(line('.') + 1) =~# p
"     if exists(':Tabularize') " && lineContainsHashrocket && (hashrocketOnPrevLine || hashrocketOnNextLine)
"         Tabularize /=>/l1
"         normal! 0
"     endif
" endfunction

"let mapleader = ','
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
