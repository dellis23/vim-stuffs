" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set splitbelow
set splitright

set ruler

let g:pymode_rope_complete_on_dot = 0

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Remap NERDTree's help so that backwards searching works
let NERDTreeMapHelp='<f1>'
