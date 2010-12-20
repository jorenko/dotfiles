syntax on
set incsearch

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

autocmd FileType python set ts=4 sw=4 et ai smartindent showmatch

autocmd FileType make set ts=8 sw=8 noet ai smartindent showmatch

autocmd FileType h,c,cpp set ts=2 sw=2 et ai smartindent showmatch

if getcwd() =~ "src/Vibrant"
	let t = substitute(getcwd(), "/src/Vibrant.*", "/src/Vibrant/tags", "")
	execute "set tags=" . t
endif
