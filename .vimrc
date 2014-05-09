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
