augroup filetypedetect
au BufNewFile,BufRead *.cnd setf cnd
au! BufRead,BufNewFile *.json setfiletype json 
augroup END
