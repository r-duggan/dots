return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup({
      hijack_unnamed_buffer_when_opening = false,
      view = {
        width = 30,
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = {
          ".DS_Store",
        },
      },
      renderer = {
        hidden_display = "all",
        highlight_git = "icon",
        highlight_opened_files = "all",
        highlight_modified = "all",
        icons = {
          web_devicons = {
            folder = {
              enable = true,
            },
          },
        },
      },
    })
  end
}
