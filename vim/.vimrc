filetype plugin indent on

set completeopt=menu,menuone,noselect,noinsert

function! SmartTab()
    if col('.') <= 1 || getline('.')[col('.') - 2] =~ '\s'
        return "\<Tab>"
    elseif &omnifunc != ''
        return "\<C-x>\<C-o>"
    else
        return "\<C-n>"
    endif
endfunction

inoremap <expr> <Tab> SmartTab()

set clipboard=unnamedplus
set cursorline
set noshowmode
set scrolloff=5
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set wrap
set linebreak
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoread
set wildmenu
set wildmode=longest:full,full
set number relativenumber
