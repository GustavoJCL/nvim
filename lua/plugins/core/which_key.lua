return {
	{
		'folke/which-key.nvim',
		event = 'VeryLazy',
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			layout = {
				height = { min = 4, max = 35 }, -- min and max height of the columns
				width = { min = 20, max = 50 }, -- min and max width of the columns
				spacing = 2,                -- spacing between columns
				align = 'left',             -- align columns left, center or right
			},
			icons = {
				separator = '󰁕',
				group = ' '
			},
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		-- after = function()
		-- 			end
	},
}
