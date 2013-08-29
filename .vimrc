" Включаем pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

" Проверка синтакса
syntax on

" Для GUI
if has("gui_running")
  " Railscats тема
  colorscheme railscasts

  " Убираем toolbar
  set guioptions=-t

  " Включаем поддержку Option/Meta
  set macmeta
endif

" Номер строки
set number

" Перенос по словам
set linebreak

" Поиск
set showmatch
set incsearch
set hlsearch
set nohls
set smartcase
" set ignorecase

" Отключить линейку
set noruler

" Строка статуса
set laststatus=2

" Блоки кода
" set foldenable
" set foldmethod=syntax
" set foldcolumn=3
" set foldleavel=1
" set foldopen

" Не делать временных файлов
set nobackup
set nowritebackup
set noswapfile

" Табы, 2 пробела
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set list listchars=tab:\ \ ,trail:·

" Файл с метками
set tags=tags

" Навигация по файлам
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/assets/*

" Просто навигация по файлу
:map <M-j> 5j
:map <M-k> 5k

" Навигация по буферам
:map <M-h> :bp<CR>
:map <M-l> :bn<CR>
