return {
  {
    'jiaoshijie/undotree',
    lazy = true,
    event = 'BufRead',
    dependencies = 'nvim-lua/plenary.nvim',
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>", desc = "Toggle undotree"},
    },
  },
}
