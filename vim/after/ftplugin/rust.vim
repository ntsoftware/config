setlocal relativenumber
setlocal number
setlocal textwidth=100
setlocal colorcolumn=100
setlocal signcolumn=yes
setlocal omnifunc=ale#completion#OmniFunc

" Run :RustFmt automatically when saving a buffer
let b:rustfmt_autosave = 1
