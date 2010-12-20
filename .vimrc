syntax on
set incsearch

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

autocmd FileType python set ts=4 sw=4 et ai smartindent showmatch

autocmd FileType make set ts=8 sw=8 noet ai smartindent showmatch

autocmd FileType h,c,cpp set ts=2 sw=2 et ai smartindent showmatch

noremap <Nul> <C-x><C-o>

if getcwd() =~ "nextgen/firmware"
        let t = substitute(getcwd(), "/nextgen/firmware.*", "/nextgen/firmware/tags", "")
        execute "set tags=" . t
endif

if getcwd() =~ "nextgen/software"
        let t = substitute(getcwd(), "/nextgen/software.*", "/nextgen/software/Instrument_drivers/libVTEX/tags", "")
        execute "set tags=" . t
endif

if getcwd() =~ "uClinux-dist"
        let t = substitute(getcwd(), "/uClinux-dist.*", "/uClinux-dist/tags", "")
        execute "set tags=" . t
endif

if getcwd() =~ "digital/firmware"
        let t = substitute(getcwd(), "/digital/firmware.*", "/digital/firmware/tags", "")
        execute "set tags=" . t
endif

if getcwd() =~ "src/Vibrant"
	let t = substitute(getcwd(), "/src/Vibrant.*", "/src/Vibrant/tags", "")
	execute "set tags=" . t
endif
