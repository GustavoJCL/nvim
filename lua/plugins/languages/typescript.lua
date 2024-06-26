return {
	{
		'pmizio/typescript-tools.nvim',
		lazy = true,
		event = 'VeryLazy',
		dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
		opts = {
			settings = {
				tsserver_file_preferences = {
					includeInlayParameterNameHints = 'all',
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = false,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
				publish_diagnostic_on = 'change',
			},
		},
	},
	{
		'vuki656/package-info.nvim',
		lazy = true,
		dependencies = { 'MunifTanjim/nui.nvim' },
		opts = {},
		event = 'BufRead package.json',
	},
	{
		'dmmulroy/tsc.nvim',
		lazy = true,
		cmd = 'TSC',
		opts = {},
	},
	-- {
	-- 	'yioneko/nvim-vtsls',
	-- 	lazy = true,
	-- 	config = function()
	-- 		require('vtsls').config { refactor_auto_rename = true }
	-- 	end,
	-- },
}
