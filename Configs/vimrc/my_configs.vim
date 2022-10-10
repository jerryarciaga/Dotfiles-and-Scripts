filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set number
set paste

# Folds
set foldenable
set foldmethod=indent

# Soft Tabs
set expandtab
set tabstop=4
set softtabstop=4

# Indentation Guide
:set list listchars=tab:»-,trail:·,extends:»,precedes:«
