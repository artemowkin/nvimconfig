call plug#begin('~/.vim/plug')

" менюшка с файлами и папками слева
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" автоматическое закрытие скобок, ковычек
Plug 'jiangmiao/auto-pairs'
" color schemes
Plug 'flazz/vim-colorschemes'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

filetype plugin indent on


" Полоска на 79 символе и номера строк
set colorcolumn=79
set nu

" Настройка табов
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
" Автоотступ
set autoindent


" Подсвечивать все, что можно подсвечивать
let python_highlight_all = 1
" 256 цветов в терминале
set t_Co=256
" Кодировка терминала
set termencoding=utf-8


" Отступы после ключевых слов в .py файлах
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


" Включить поддержку синтаксиса
syntax on


set mousehide " Спрятать курсор мыши, когда печатаешь текст
set novisualbell " Не мигать
set t_vb= " Не пищать
set showtabline=1 " Отключить верхнюю панель

" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]


set wrap
set linebreak


" Вырубаем .swp и ~ файлы
set nobackup
set encoding=utf-8
set fileencodings=utf8,cp1251


" Панелька снизу
set clipboard=unnamed
set ruler


" Выключаем звук в Vim
set visualbell t_vb=


" Настройка подсветки поиска
set hlsearch
set incsearch
set ignorecase


colorscheme onehalfdark

" mappings

" Убрать подсветку найденных совпадений при нашатии ESC
nnoremap <esc> :noh<return><esc>

noremap <A-h> gT
noremap <A-l> gt

map <C-n> :NERDTreeToggle<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

