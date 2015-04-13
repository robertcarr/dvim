" Add timestamp for <F5>

inoremap <F5> <C-R>=strftime("%c")<CR>

" Handle funky backspace issues with autoindent
set backspace=2

" Auto save/load folds
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview 

" Used for vim-pathogen
filetype plugin indent on

execute pathogen#infect()

let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_sh_checkers = [ 'bashate' ]
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_python_checkers = [ 'flake8', 'pylint', 'pyflakes' ]
let g:syntastic_python_flake8_post_args = '--ignore=E501'

" Standard indents and style
set background=dark
set bg=dark
set hlsearch
set shiftwidth=4
set nosi

" Used for vim-template plugin
let g:email = "rob@cloudscaling.com"
let g:username = "Robert Carr"
" Don't auto apply templates
let g:templates_no_autocmd = 1

set ai " Auto indent
set si " Smart indent
set tabstop=4
set expandtab
set paste

" syntax highlighting
"syntax on
"autocmd BufNewFile,BufRead *.json set ft=javascript
"autocmd BufNewFile,BufRead *.py set ft=python smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


