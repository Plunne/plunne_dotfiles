" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Exit ranger after picking a file
let g:rnvimr_enable_picker = 1

" Fullscreen
let g:rnvimr_layout = {
    \ 'relative': 'editor',
    \ 'width': float2nr(1.0 * &columns),
    \ 'height': float2nr(1.0 * &lines) - 2,
    \ 'col': 0,
    \ 'row': 0,
    \ 'style': 'minimal'
    \ }

" Disable border
let g:rnvimr_draw_border = 0

" Open shortcut
nmap <space>r :RnvimrToggle<CR>
