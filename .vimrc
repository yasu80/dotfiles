"Managing in /home/yasu16/dotfiles/.vimrc
set expandtab
set tabstop=3
set shiftwidth=3
set smartindent
set ignorecase
set wrapscan
set number
set title
set list
syntax on
imap <C-c>inc #include <>
imap <C-c>main int main( int argc, char* argv[]) {<CR><CR>return 0;<CR>}
imap <C-c>mainc #include <stdio.h><CR>int main( int argc,char* argv[]) {<CR><CR>return 0;<CR>}

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

"color
hi Comment ctermfg=Cyan
hi Special ctermfg=Lightblue
hi Directory ctermfg=Lightblue
hi Preproc ctermfg=Lightblue
