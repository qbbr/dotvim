# QBBR dotvim

	  ____  ____  ____  _____
	 / __ \|  _ \|  _ \|  __ \
	| |  | | |_) | |_) | |__) |
	| |  | |  _ <|  _ <|  _  /
	| |__| | |_) | |_) | | \ \
	 \___\_\____/|____/|_| _\_\
	     _       _         _
	  __| | ___ | |___   _(_)_ __ ___
	 / _` |/ _ \| __\ \ / / | '_ ` _ \
	| (_| | (_) | |_ \ V /| | | | | | |
	 \__,_|\___/ \__| \_/ |_|_| |_| |_|

## Installation

```bash
cd ~
git clone --recursive https://github.com/qbbr/dotvim.git .vim
ln -s .vim/.vimrc
```

## Screenshot

![qbbr-vim](https://i.imgur.com/AQSqLeb.png)

## Bundles

`bufexplorer` - удобное переключение между буферами  
`ctrlp` - поиск файлов  
`delimitmate` - автозакрытие кавычек, скобок и т.д  
`editorconfig-vim` - CS [EditorConfig](https://editorconfig.org/)  
`emmet-vim` - zencoding  
`nerdcommenter` - комментирование кода  
`nerdtree` - файловый менеджер в виде дерева  
`nginx.vim` - подсветка nginx файлов (/etc/nginx/*)  
`repeat` - повторение операций  
`snipmate` - поддержка сниппетов  
`syntastic` - linter--
`surround`- работа со скобками/кавычками/тегами  
`unimpaired`- перемещение строк в верх/низ  
`vim-bash-snippets` - bash сниппеты ([vim-bash-snippets](https://github.com/qbbr/vim-bash-snippets))  
`vim-colors-solarized` - solarized colorscheme  
`vim-css3-syntax` - подсветка css3 файлов  
`vim-flavored-markdown` - подсветка markdown  
`vim-fugitive` - git wrapper  
`vim-javascript` - улучшенная подсветка js  
`vim-less` - подсветка less файлов  
`vim-startify` - start screen  
`vim-symfony` - symfony интеграция и сниппеты ([vim-symfony](https://github.com/qbbr/vim-symfony))  
`vim-twig` - подсветка twig шаблонов и сниппеты ([vim-twig](https://github.com/qbbr/vim-twig))  
`vim-vue` - подсветка vue файлов

## Hotkeys

`,` - &lt;leader&gt;

`;` - поиск и замена слова под курсором  
`<space>` - выключает подсветку поиска :nohlsearch  
`_$` - удалить лишние отступы в конце строк (StripTrailingWhitespaces)

`<C-c>/<C-v>` - copy-pase (xclip)  
`<MiddleMouse>` - pase (xclip)

`<C-Up>/<C-Down>`  - переместить строку или множество выделенных строк вверх/вниз на одну строку (unimpaired)  
`,c<space>` - закомментировать/раскомментировать код (nerdcommenter)

`<F4>` - toggle nerdtree  
`<F5>` - toggle bufexplorer  
`<F6>` - prev buffer  
`<F7>` - next buffer  
`<F12>` - netrw

`<C-p>` - ctrlp  
`<C-y>,` - zencoding
