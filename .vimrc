"Managing in /home/yasu16/dotfiles/.vimrc
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set ignorecase
set wrapscan
set number
set title
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
syntax on
imap <C-c>inc #include <>
imap <C-c>main int main( int argc, char* argv[]) {<CR><CR>return 0;<CR>}
imap <C-c>mainc #include <stdio.h><CR>int main( int argc,char* argv[]) {<CR><CR>return 0;<CR>
imap {} {}<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

imap <C-c>sig //**************************The_Source_was_written_by_Tokuyasu_Hajime**************************<CR>//**************************__________Source_Built:20160613__________**************************

let mapleader = ","

"**********for C**********
"----------xxxxx---------
inoremap <leader>sig  //**************************The_Source_was_written_by_Tokuyasu_Hajime**************************<CR>//**************************__________Source_Built:xxxxxxxx__________**************************
inoremap <leader>mainc #include <stdio.h><CR>int main( int argc,char* argv[]) {<CR><CR>return 0;<CR>}
inoremap <leader>inc #include <>
"----------xxxxx----------
"*************************


"**********for JS**********
"----------xxxxxx----------
inoremap <leader>js <script><CR><CR>//<CR></script>
"----------xxxxxx----------
"**************************

"***********html***********
"----------xxxxxx----------
inoremap <leader>html <!DOCTYPE HTML><CR><html><CR><meta charset=utf-8><CR><title></title><CR></head><CR><body><CR><body><CR></html>
"----------xxxxxx----------
"**************************

" syntaxes

autocmd BufRead,BufNewFile *.launch setfiletype roslaunch


"color
hi Comment ctermfg=Cyan
hi Special ctermfg=Lightblue
hi Directory ctermfg=Lightblue
hi Preproc ctermfg=Lightblue

