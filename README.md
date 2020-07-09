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

![qbbr-vim](https://i.imgur.com/wU8VET1.png)

## Bundles

`bufexplorer` - удобное переключение между буферами  
`ctrlp` - поиск файлов  
`delimitmate` - автозакрытие кавычек, скобок и т.д  
`emmet-vim` - zencoding  
`nerdcommenter` - комментирование кода  
`nerdtree` - файловый менеджер в виде дерева  
`nginx` - подсветка nginx файлов (/etc/nginx/*)  
`repeat` - повторение операций  
`snipmate` - поддержка сниппетов  
`surround`- работа со скобками/кавычками/тегами  
`unimpaired`- перемещение строк в верх/низ  
`vim-css3-syntax` - подсветка css3 файлов  
`vim-fakeclip` - копирование vim &lt;-&gt; X  
`vim-flavored-markdown` - подсветка markdown  
`vim-fugitive` - git wrapper  
`vim-gitgutter` - git diff в колонке (gutter)  
`vim-javascript` - улучшенная подсветка js  
`vim-less` - подсветка less файлов  
`vim-phpqa` - PHP QA Tools For Vim  
`vim-startify` - start screen  
`vim-symfony` - snippets for symfony2  
`vim-twig` - подсветка twig файлов и snippets for snipmate  
`vim-vue` - подсветка vue файлов

## Hotkeys

`,` - &lt;leader&gt;

`<F4>` - NERDTree  
`<F5>` - BufExplorer  
`<F6>` - prev buffer  
`<F7>` - next buffer  
`<F12>` - Ex

`;` - поиск и замена слова под курсором

`<C-Up>`  - переместить строку или множество выделенных строк вверх на одну строку (unimpaired)  
`<C-Down>` - переместить строку или множество выделенных строк вниз на одну строку

`,c<space>` - закомментировать/раскомментировать код

`<C-y>,` - zencoding

`<C-p>` - ctrlp

`_$` - удалить лишние отступы в конце строк (StripTrailingWhitespaces)

`<C-f>` - symfony console
