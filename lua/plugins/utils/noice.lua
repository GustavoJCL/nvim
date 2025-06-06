-- if true then return {} end
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = function(_, opts)
    opts.lsp = {
      hover = { enabled = false },
      signature = { enabled = false },
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = false, -- requires hrsh7th/nvim-cmp
      },
    }
    -- you can enable a preset for easier configuration
    opts.presets = {
      bottom_search = false,        -- use a classic bottom cmdline for search
      command_palette = true,       -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false,           -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,       -- add a border to hover docs and signature help
    }
    opts.notify = {
      enabled = true,
    }
    -- add any options here
    require("telescope").load_extension("noice")

    vim.keymap.set("n", "<leader>fn", function()
      require("noice").cmd("history")
    end, { desc = "Find noice.nvim history" })
  end,
}
