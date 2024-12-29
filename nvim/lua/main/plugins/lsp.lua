return{
  {
    'neovim/nvim-lspconfig',
  },
  {
    'SmiteshP/nvim-navic',
    dependencies = {
      'neovim/nvim-lspconfig',
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    config = function()
      require('mason').setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      require('mason-lspconfig').setup({
        ensure_installed = {
          'html',
          'cssls',
          'ts_ls',
          'lua_ls',
          'pyright',
          'clangd',
        },
      })

      require('mason-tool-installer').setup({
        ensure_installed = {
          'prettier',
          'stylua',
          'isort',
          'black',
          'pylint',
        },
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({
            on_attach = function(client,bufnr)
              require('nvim-navic').attach(client,bufnr)
            end
          })
        end,
      })
    end,
  },
}
