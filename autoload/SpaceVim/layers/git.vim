function! SpaceVim#layers#git#plugins() abort
    return [
                \ ['cohama/agit.vim',                        { 'on_cmd':['Agit','AgitFile']}],
                \ ['gregsexton/gitv',                        { 'on_cmd':['Gitv']}],
                \ ['junegunn/gv.vim',               { 'on_cmd' : 'GV'}],
                \ ['lambdalisue/vim-gita',          {'on_cmd': 'Gita'}],
                \ ['tpope/vim-fugitive'],
                \ ]
endfunction


function! SpaceVim#layers#git#config() abort
    nnoremap <silent> <Leader>gs :Gita status<CR>
    nnoremap <silent> <Leader>gd :Gita diff<CR>
    nnoremap <silent> <Leader>gc :Gita commit<CR>
    nnoremap <silent> <Leader>gb :Gita blame<CR>
    nnoremap <silent> <Leader>gp :Gita push<CR>
    nmap <leader>hj <plug>(signify-next-hunk)
    nmap <leader>hk <plug>(signify-prev-hunk)
    nmap <leader>hJ 9999<leader>gj
    nmap <leader>hK 9999<leader>gk
    augroup spacevim_layer_git
        autocmd!
        autocmd FileType diff nnoremap <buffer><silent> q :bd!<CR>
    augroup END
endfunction
