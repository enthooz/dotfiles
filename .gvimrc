"colorscheme slate
colorscheme vividchalk

set transparency=0

" tab navigation like firefox
:nmap <D-t> :tabnew<CR>
:imap <D-t> <Esc>:tabnew<CR>
:nmap <D-w> :tabclose<CR>
:imap <D-w> <Esc>:tabclose<CR>
:nmap <D-]> :tabnext<CR>
:imap <D-]> <Esc>:tabnext<CR>
:nmap <D-[> :tabprev<CR>
:imap <D-[> <Esc>:tabprev<CR>

" cwd to current file's directory
" autocmd BufEnter * lcd %:p:h

set fuopt=maxvert,maxhorz
