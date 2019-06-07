set number
call plug#begin('~/.local/share/nvim/plugged')
call plug#end()
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

