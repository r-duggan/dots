local plugins = {
  {
    "r-duggan/vim-urscript",
    ft = "urscript",
  },
  {
    "stevearc/aerial.nvim",
    lazy = false
  },
  {
    "preservim/tagbar",
    lazy = false
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
      git = {
        enable = true,
        ignore = false
      },
      renderer = {
        highlight_git = true,

        root_folder_label = ":~:.",

        icons = {
          show = {
            git = true
          }
        }
      },
      hijack_directories = {
        enable = true,
        auto_open = true
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "json",
        "markdown",
        "markdown_inline",

        -- low level
        "c",
        "cpp",
        "java"
      }
    }
  }
}
return plugins
