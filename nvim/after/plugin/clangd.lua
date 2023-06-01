local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    filetypes = {"c"},
}
