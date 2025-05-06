-- if true then return {} end
return {
  {
    'folke/edgy.nvim',
    lazy = true,
    opts = function(_, opts)
      if not opts.bottom then
        opts.bottom = {}
      end
      table.insert(opts.bottom, 'Trouble')
    end,
  },
  {
    'folke/trouble.nvim',
    lazy = true,
    event = 'BufRead',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function(_, opts)
      -- local trouble = require 'trouble'
      local wk = require 'which-key'
      opts.height = 7
      opts.use_diagnostic_signs = true
      opts.action_keys = {
        close = { 'q', '<ESC>' },
        cancel = '<C-e>',
      }

      wk.add {
        '<leader>x',
        group = '  Trouble',
      }
      -- require("trouble.sources.telescope").open()
      -- Lua
      vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle focus=false filter.buf=0 <cr>',
        { desc = 'Toggle document diagnostics' })
      vim.keymap.set('n', '<leader>xw', '<cmd>Trouble diagnostics toggle <cr>', { desc = 'Workspace diagnostics' })
      vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle<cr>', { desc = 'Toggle diagnostics' })
      vim.keymap.set('n', '<leader>xq', function()
        require('trouble').toggle 'quickfix'
      end, { desc = 'Quickfix' })
      vim.keymap.set('n', '<leader>xl', function()
        require('trouble').toggle 'loclist'
      end, { desc = 'Loclist' })
      vim.keymap.set('n', 'gR', function()
        require('trouble').toggle 'lsp_references'
      end, { desc = 'Lsp references' })
    end,
  },
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
