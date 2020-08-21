"--------------------------------------------
"         ___  ____  ____  ____  _
"        / _ \| __ )| __ )|  _ \( )___
"       | | | |  _ \|  _ \| |_) |// __|
"       | |_| | |_) | |_) |  _ <  \__ \
"        \__\_\____/|____/|_| \_\ |___/
"
"                _
"        __   __(_)_ __ ___  _ __ ___
"        \ \ / /| | '_ ` _ \| '__/ __|
"        _\ V / | | | | | | | | | (__
"       (_)\_/  |_|_| |_| |_|_|  \___|
"
" Sokolov Innokenty, <imqbbr@gmail.com>
"--------------------------------------------

execute pathogen#infect()

set nocompatible                            " режим несовместимый с Vi
set tabstop=4                               " количество пробелов для табуляции
set softtabstop=4                           " количество пробелов добавляемое при нажатии на клавишу табуляции
set shiftwidth=4                            " количество пробелов в командах отступа, например >>, или <<
"set expandtab                               " заменить табуляцию на пробелы
set list                                    " показывать спец-символы
set listchars=tab:>-,trail:-                " список спец-символов (eol:<символ_конца_строки>,tab:<начальный_символ_табуляции><последующие_символы_табуляции>,trail:<сивол_пробела_в_конце_строки>,nbsp:<символ_неразрывного_пробела>)
set nu                                      " нумерация строк
set ruler                                   " показывать курсов всегда
"set showcmd                                 " отображать выполняемую команду в последней строке экрана

set wrap                                    " включаем перенос строк
set linebreak                               " перенос строк по словам, а не по буквам

set wildmenu                                " показывать все возможные кандидаты для выбора при авто-завершении команд в командной строке
set wcm=<TAB>
set wildmode=list:longest,full              " вывести весь список сразу доступных вариантов, а затем перебором

" folding
" https://vim.fandom.com/wiki/Folding
" zc / zo / za - on cursor close / open / toggle
" zC / zO / zA - all folding levels on cursor
" zM / zR - close / open all folds
" [z / ]z - jump to start / end
set nofoldenable                            " выключаем фолдинг (сворачивание блоков кода)
"set foldenable                             " или включаем
"set foldmethod=indent                       " фолдинг по отступам
set foldcolumn=1                            " колонка, чтобы показывать плюсики для скрытия блоков кода

"set hlsearch                                " включаем подсветку выражения, которое ищется в тексте (:nohlsearch отключает подсветку)
set incsearch                               " поиск по набору текста
set ignorecase                              " игнорировать регистр
set smartcase                               " если искомое выражения содержит символы в верхнем регистре – ищет с учётом регистра, иначе – без учёта

set backup                                  " сохранять резервную копию файла
set backupdir=~/.vim/backups/               " сюда
set dir=/tmp                                " директория для swap файлов

set scrolljump=7                            " минимальное количество строк остающихся выше/ниже курсора
set scrolloff=7                             " минимальное количество строк при скроле

set novisualbell                            " выключаем надоедливое мигание
set t_vb=                                   " выключаем пищание

set mouse=a                                 " включаем поддержку мыши
set mousemodel=popup                        " правая кнопка мыши - всплывает меню
set mousehide                               " скрывать мышь, когда печатаем

set termencoding=utf-8                      " кодировка по умолчанию
" список кодировок, которые Vim будет перебирать при открытии файла
" для явного указания кодировки файла используйте `:e ++enc=koi8-r foo.txt`
set fileencodings=usc-bom,utf-8,default,cp1251,latin1
set ffs=unix,dos,mac                        " порядок применения формата файла

" не выгружать буфер, когда переключаемся на другой
" это позволяет редактировать несколько файлов в один
" и тот же момент без необходимости сохранения каждый раз,
" когда переключаешься между ними
set hidden

set autoread                                " автоматическое перечитывание файла при изменении
autocmd CursorHold * checktime

set ch=1                                    " высота командной строки
set autoindent                              " автоотступ
set backspace=indent,eol,start
set whichwrap+=<,>,[,]                      " разрешить переход на новую/предыдущую строку при достижении конца/начала текущей

" строка состояния
set statusline=
set statusline+=%2*%-3.3n%0*\               " номер буфера
set statusline+=%f\                         " название файла
set statusline+=%h%1*%m%r%w%0*              " флаги
set statusline+=[%{&encoding},              " кодировка
set statusline+=%{&fileformat}]             " формат файла
set statusline+=\ %{strlen(&ft)?&ft:'none'} " тип файла
set statusline+=\ %{fugitive#statusline()}  " git
set statusline+=%=                          " выравнивание по правой стороне (align right)
set statusline+=%2*0x%-8B\                  " текущий символ
set statusline+=%-10.(%l,%c%V%)\ %<%P       " номер строки, номер столбца
set laststatus=2

set smartindent                             " умные отступы после '{'
set fo+=cr                                  " Fix <Enter> for comment
set sessionoptions=curdir,buffers,tabpages  " опции сессий

"set spell                                   " проверка орфографии
"set spelllang=ru,en                         " список языков

syntax on                                   " подсветка синтаксиса
set cursorline                              " подсветка текущей строки
filetype on                                 " включить определение типа файла (~/.vim/filetype.vim)
filetype plugin on                          " включить загрузку модулей
filetype indent on                          " включить загрузку сценариев настройки отступов

set t_Co=256                                " включаем поддержку 256 цветов
set background=dark

" https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors=16
"let g:solarized_termtrans=1
let g:solarized_italic=0
let g:solarized_contrast="high"
colorscheme solarized

autocmd FileType php,html,twig,yaml,javascript,css,scss set expandtab
autocmd FileType yml,yaml set shiftwidth=2 softtabstop=2 tabstop=2
" fix closetag
autocmd FileType twig,htmltwig let b:unaryTagsStack=""
" nginx
autocmd BufNewFile,BufRead /etc/nginx/* if &ft == '' | setlocal filetype=nginx | endif
" typescript
autocmd BufNewFile,BufRead *.ts setlocal filetype=javascript
" markdown
autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown

" CtrlP
set wildignore+=*/app/cache/*,*/app/logs/*,*/var/cache/*,*/var/log/*,*/node_modules/*,*/vendor/*,*/log/*,*/tmp/*,*.so,*.swp,*.zip

"=======================
"=== горячие клавиши ===
"=======================

function! StripTrailingWhitespaces(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nmap _$ :call StripTrailingWhitespaces("%s/\\s\\+$//e")<CR>

let mapleader = ","
let g:mapleader = ","

" выключаем  режим замены
imap >Ins> <Esc>i

" copy paste, using xclip
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
map <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>a
nmap <MiddleMouse> :-1r !xclip -o -selection primary<CR>$
imap <MiddleMouse> <Esc><MiddleMouse>a

" vim-unimpaired
" переместить строку вверх/вниз
nmap <C-Up> [e
nmap <C-Down> ]e
" переместить выделенные строки вверх/вниз
vmap <C-Up> [egv
vmap <C-Down> ]egv

" nerdcommenter
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F4 - NERDTree
nmap <F4> :NERDTreeToggle<CR>
vmap <F4> <esc>:NERDTreeToggle<CR>
imap <F4> <esc>:NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '+'
let NERDTreeIgnore=['\.pyc', '\.swp', '\.git$', '\.hg', '\.svn', '\.bzr']
let NERDTreeShowHidden=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ini', '143', 'none')
call NERDTreeHighlightFile('md', '184', 'none')
call NERDTreeHighlightFile('markdown', '184', 'none')
call NERDTreeHighlightFile('yml', '208', 'none')
call NERDTreeHighlightFile('yaml', '208', 'none')
call NERDTreeHighlightFile('log', '178', 'none')
call NERDTreeHighlightFile('txt', '192', 'none')

call NERDTreeHighlightFile('png', '65', 'none')
call NERDTreeHighlightFile('jpg', '66', 'none')
call NERDTreeHighlightFile('ico', '73', 'none')

call NERDTreeHighlightFile('php', '250', 'none')
call NERDTreeHighlightFile('js', '130', 'none')
call NERDTreeHighlightFile('json', '166', 'none')
call NERDTreeHighlightFile('html', '205', 'none')
call NERDTreeHighlightFile('twig', '204', 'none')
call NERDTreeHighlightFile('css', '210', 'none')
call NERDTreeHighlightFile('scss', '210', 'none')
call NERDTreeHighlightFile('xml', '170', 'none')

call NERDTreeHighlightFile('gitignore', '240', 'none')
call NERDTreeHighlightFile('gitignore', '240', 'none')
call NERDTreeHighlightFile('gitkeep', '240', 'none')
call NERDTreeHighlightFile('htaccess', '240', 'none')
call NERDTreeHighlightFile('lock', '245', 'none')
"let NERDTreeKeepTreeInNewTab=1

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F12 - обозреватель файлов
nmap <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" vim-symfony console <C-F>
let g:symfony_enable_shell_mapping = 1

" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" startify
let g:startify_custom_header =[]

" vim-javascript
let g:javascript_plugin_jsdoc = 1
