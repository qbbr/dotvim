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
"--------------------------------------------

" @plugin: pathogen
execute pathogen#infect()

" for `:!<bash-alias>`
" https://stackoverflow.com/a/19819036
let $BASH_ENV="~/.bash_aliases"

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

set hlsearch                                " включаем подсветку выражения, которое ищется в тексте (:nohlsearch,:noh отключает подсветку)
set incsearch                               " поиск по набору текста
set ignorecase                              " игнорировать регистр
set smartcase                               " если искомое выражения содержит символы в верхнем регистре – ищет с учётом регистра, иначе – без учёта

set backup                                  " сохранять резервную копию файла
set backupdir=~/.vim/backups/               " сюда

" директория для swap файлов
if empty($TMPDIR) " проверяем ENV переменную TMPDIR (android termux fix)
    set dir=/tmp
else
    set dir=$TMPDIR
endif

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
set statusline+=\ %#warningmsg#             " syntastic
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
" todo@qbbr: n disable on $TERM=linux
set termguicolors                           " включаем поддержку true-color

if $THEME_MODE_LIGHT
    set background=light
else
    set background=dark
endif

" тема
" https://github.com/ericbn/vim-solarized
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

" enable italic
highlight Comment cterm=italic gui=italic

"=======================
"=== горячие клавиши ===
"=======================

" выключаем  режим замены
imap >Ins> <Esc>i

" переназначаем mapleader, по-умолчанию "\"
let mapleader = ","
let g:mapleader = ","

" <;> - поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" <space> - выключает подсветку поиска :nohlsearch
nnoremap <silent> <Space> :noh<Bar>:echo<CR>

" <_$> - удаляем пробелы в конце строк
function! StripTrailingWhitespaces(command)
    " save last search, and cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nmap _$ :call StripTrailingWhitespaces("%s/\\s\\+$//e")<CR>

" copy-paste
" @depends: xclip
" vim can't use <C-S-c> T_T, its for terminal
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" C-S-V - from .Xresources
"map <C-S-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
"imap <C-S-v> <Esc><C-S-v>a
nmap <MiddleMouse> :-1r !xclip -o -selection primary<CR>$
imap <MiddleMouse> <Esc><MiddleMouse>a

" @plugin: unimpaired
" переместить строку вверх/вниз
nmap <C-Up> [e
nmap <C-Down> ]e
" переместить выделенные строки вверх/вниз
vmap <C-Up> [egv
vmap <C-Down> ]egv

" @pluigin: nerdcommenter
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" @plugin: nerdtree
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '+'
let NERDTreeIgnore=['\.pyc', '\.swp', '\.git$', '\.hg', '\.svn', '\.bzr']
let NERDTreeShowHidden=1

" @see: https://codeyarns.com/tech/2014-05-05-how-to-highlight-current-file-in-nerdtree.html
" check if NERDTree is open or active
function! IsNERDTreeOpen()
    return exists('t:NERDTreeBufName') && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" call NERDTreeFind if NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind | wincmd p
    endif
endfunction

" highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" fix double event on toggle
function! ToggleNerdTree()
  set eventignore=BufEnter
  NERDTreeToggle
  set eventignore=
endfunction

" F4 - toggle NERDTree
nmap <F4> :call ToggleNerdTree()<CR>
vmap <F4> <esc>:call ToggleNerdTree()<CR>
imap <F4> <esc>:call ToggleNerdTree()<CR>

" exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" run as project
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Startify | NERDTree | wincmd l | endif
augroup END

" NERDTree file highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

highlight NERDTreeDir ctermfg=cyan cterm=bold
highlight NERDTreeExecFile ctermfg=green cterm=bold

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

" @plugin: bufexplorer
" F5 - просмотр списка буферов
nmap <F5> <Esc>:ToggleBufExplorer<cr>
vmap <F5> <esc>:ToggleBufExplorer<cr>
imap <F5> <esc><esc>:ToggleBufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" @plugin: vim-togglebg
" F9 - toggle bg
call togglebg#map("<F9>")
"nnoremap <F9> :let &bg=(&bg=='light'?'dark':'light')<cr>

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
" F12 - обозреватель файлов
nmap <F12> :Vexplore<cr>
vmap <F12> <esc>:Vexplore<cr>i
imap <F12> <esc>:Vexplore<cr>i

" @plugin: ctrlp
set wildignore+=*/app/cache/*,*/app/logs/*,*/var/cache/*,*/var/log/*,*/node_modules/*,*/vendor/*,*/log/*,*/tmp/*,*.so,*.swp,*.zip

" @plugin: vim-startify
let g:qbbrascii = [
\ '  ____  ____  ____  _____           ',
\ ' / __ \|  _ \|  _ \|  __ \          ',
\ '| |  | | |_) | |_) | |__) |         ',
\ '| |  | |  _ <|  _ <|  _  /          ',
\ '| |__| | |_) | |_) | | \ \          ',
\ ' \___\_\____/|____/|_| _\_\         ',
\ '     _       _         _            ',
\ '  __| | ___ | |___   _(_)_ __ ___   ',
\ ' / _` |/ _ \| __\ \ / / | `_ ` _ \  ',
\ '| (_| | (_) | |_ \ V /| | | | | | | ',
\ ' \__,_|\___/ \__| \_/ |_|_| |_| |_| ',
\ '                                    ',
\ ]
let g:startify_custom_header = 'startify#pad(startify#fortune#cowsay(startify#pad(g:qbbrascii)))'

" @plugin: vim-javascript
let g:javascript_plugin_jsdoc = 1

" @plugin: vim-syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 0
"let g:syntastic_python_pylint_args = '-E'
let g:syntastic_quiet_messages = { "type": "style", "!level": "errors" }
