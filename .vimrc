""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            JUST SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PATHOGEN INIT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" SETTINGS FOR GUI / NON GUI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  colorscheme railscasts
  set guifont=Menlo\ for\ Powerline:h12
  let g:Powerline_symbols='fancy'
  set guioptions=-t
  set macmeta
else
  set background=dark
endif

" OTHER SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set hidden
set number
set linebreak
set noruler
set laststatus=2
set tags=tags

" SEARCH SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch
set incsearch
set hlsearch
set nohls
set smartcase
" set ignorecase

" BACKUP SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile

" SPACES / TABS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set list listchars=tab:\ \ ,trail:·

" NAVIGATION SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/assets/*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            CUSTOM MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" SIMPLE NAVIGATION BY FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:map <c-j> 5j
:map <c-k> 5k

" MAPS FOR COMMAND-T
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:map <c-g>v :CommandTFlush<cr>\|:CommandT app/views<cr>
:map <c-g>c :CommandTFlush<cr>\|:CommandT app/controllers<cr>
:map <c-g>m :CommandTFlush<cr>\|:CommandT app/models<cr>
:map <c-g>h :CommandTFlush<cr>\|:CommandT app/helpers<cr>
:map <c-g>s :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
:map <c-g>j :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
:map <c-g>l :CommandTFlush<cr>\|:CommandT lib<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            CUSTOM FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" RENAME FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
:command! RenameFile :call RenameFile()
