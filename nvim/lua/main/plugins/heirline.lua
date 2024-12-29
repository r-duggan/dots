return {
  'rebelot/heirline.nvim',
  dependencies = {
    'Zeioth/heirline-components.nvim',
  },
  config = function()
    local heirline = require('heirline')
    local lib = require('heirline-components.all')

    -- setup
    lib.init.subscribe_to_events()
    heirline.load_colors(lib.hl.get_colors())

    -- The easy way.
    local Navic = {
      condition = function() return require("nvim-navic").is_available() end,
      provider = function()
        return require("nvim-navic").get_location({highlight=true})
      end,
      update = 'CursorMoved'
    }

    local statusline = {
      hl = { fg = 'fg', bg = 'bg' },
      lib.component.mode({
        mode_text = {},
      }),
      lib.component.git_branch({
        icon = {
          kind = "GitBranch",
          padding = {
            right = 1
          }
        },
        hl = lib.hl.get_attributes('git_branch'),
      }),
      lib.component.git_diff(),
      lib.component.file_info({
        filetype = false,
        filename = {},
      }),
      lib.component.diagnostics(),
      Navic,
      lib.component.fill(),
      lib.component.fill(),
      lib.component.lsp(),
      lib.component.compiler_state(),
      lib.component.virtual_env(),
      lib.component.nav({
        scrollbar = false,
        percentage = {
          padding = {
            right = 2,
          }
        }
      }),
      lib.component.mode({
        surround = {
          seperator = 'right',
        }
      }),
    }

    heirline.setup({
      statusline = statusline,
    })
  end,
}
