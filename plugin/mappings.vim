"toggle special characters
map <F6>l :set list!<CR>
"input date
nnoremap <F5>d "=strftime("%Y-%m-%d")<CR>P
inoremap <F5>d <C-R>=strftime("%Y-%m-%d")<CR>
"Buffers
nnoremap <F5>b :buffers<CR>:buffer<Space>
