if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal comments=://
setlocal commentstring=//\ %s

" Enable gf on import statements.  Convert . in the package
" name to / and append .kt to the name.
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal suffixesadd=.kt
