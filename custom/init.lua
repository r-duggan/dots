-------- Vim ----------
vim.opt.colorcolumn = "96"
vim.wo.relativenumber = true

------- Aerial ---------
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')

vim.cmd([[nmap <F8> :TagbarToggle<CR>]])

vim.cmd([[let g:tagbar_type_urscript = {
    \ 'ctagstype' : 'urscript',
    \ 'kinds'     : [
        \ 'd:Functions',
        \ 't:Threads'
    \ ],
    \ 'sort'      : 0
\ }]])

vim.cmd([[autocmd VimEnter * NvimTreeOpen]])
