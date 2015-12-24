" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

"set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark

set splitbelow
set splitright

set ruler

let g:pymode_rope_complete_on_dot = 0

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Remap NERDTree's help so that backwards searching works
let NERDTreeMapHelp='<f1>'

" \s to search for word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Press F3 to use autoformat on the current buffer
noremap <F3> :Autoformat<CR><CR>

autocmd BufNewFile,BufRead *.asm   set syntax=nasm

" JS Formatting options
"let g:formatprg_args_javascript = "-f - -s 4 -w 80 -b expand"

set backspace=indent,eol,start
