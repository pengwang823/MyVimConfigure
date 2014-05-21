syntax on
syntax enable
set nu
set bs=2
run macros/gdb_mappings.vim
set nocompatible
colorscheme desert
set autoindent
set smartindent
set number
set history=50
set hlsearch
set tabstop=4
set mouse=a
set ruler
set incsearch
set nohlsearch
set showcmd
set encoding=utf-8
call pathogen#infect()
"let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:defaultManagerWidth=30
"function! NERDTree_Start()
"		exec 'NERDTree'
"		endfunction

"function! NERDTree_IsValid()
"		return 1
"		endfunction
nmap wm :WMToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

