dotvim
======

	  ___  ____  ____  ____  _
	 / _ \| __ )| __ )|  _ \( )___
	| | | |  _ \|  _ \| |_) |// __|
	| |_| | |_) | |_) |  _ <  \__ \
	 \__\_\____/|____/|_| \_\ |___/

				 _
		 __   __(_)_ __ ___
		 \ \ / /| | '_ ` _ \
		  \ V / | | | | | | |
		   \_/  |_|_| |_| |_|

install
-------

```bash
cd ~
git clone --recursive git://github.com/qbbr/dotvim.git .vim
ln -s .vim/.vimrc
```

screenshot
----------

![qbbr-vim](https://lh5.googleusercontent.com/-L7E5YoiCkDE/Uh79KB_eGhI/AAAAAAAABQw/CK-JLr4dwvI/s700/qbbr-vim.png)

bundles
-------

`bufexplorer` - удобное переключение между буферами  
`closetag` - автозакрытие html/xml тегов  
`ctrlp` - поиск файлов  
`delimitmate` - автозакрытие кавычек, скобок и т.д  
`emmet-vim` - zencoding  
`nerdcommenter` - комментирование кода  
`nerdtree` - файловый менеджер в виде дерева  
`repeat` - повторение операций  
`snipmate` - поддержка сниппетов  
`supertab-continued` - autocomplete по табу  
`surround`- работа со скобками/кавычками/тегами  
`unimpaired`- перемещение строк в верх/низ  
`vim-css3-syntax` - подсветка css3 файлов  
`vim-css-color` - визуальное отображение цвета в CSS  
`vim-fakeclip` - копирование vim &lt;-&gt; X  
`vim-less` - подсветка less файлов  
`vim-symfony` - snippets for symfony2  
`vim-twig` - подсветка twig файлов и snippets for snipmate  
`wombat256mod` - цветовая схема

hotkeys
-------

`,` - &lt;leader&gt;

`<F4>` - NERDTree  
`<F5>` - BufExplorer  
`<F6>` - prev buffer  
`<F7>` - next buffer  
`<F12>` - Ex

`<TAB>` - автодополнение слов (supertab) и snipmate

`;` - поиск и замена слова под курсором

`<C-Up>`  - переместить строку или множество выделенных строк вверх на одну строку (unimpaired)  
`<C-Down>` - переместить строку или множество выделенных строк вниз на одну строку

`,c<space>` - закомментировать/раскомментировать код

`<C-_>` - автозакрытие html/xml тега

`<C-y>,` - zencoding

`<C-p>` - ctrlp

`_$` - удалить лишние отступы в конце строк (StripTrailingWhitespaces)
