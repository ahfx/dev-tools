"size of a hard tabstop
set tabstop=4

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=4

" display line numbers
set number

" Tab Navigation, ctrl+t then arrow (not at the same time)
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Cursor highlights
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

inoremap jk <ESC>

noremap <space> :
