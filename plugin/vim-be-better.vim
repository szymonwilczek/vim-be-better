if has('nvim-0.5')
    fun! VimBeBetter()
        lua for k in pairs(package.loaded) do if k:match("^vim%-be%-good") then package.loaded[k] = nil end end
        lua require("vim-be-better").menu()
    endfun

    com! VimBeBetter call VimBeBetter()

    augroup VimBeBetter
        autocmd!
        autocmd VimResized * :lua require("vim-be-better").onVimResize()
    augroup END
else
    echo 'You need nvim v0.5 or above to get better at vim'
endif
