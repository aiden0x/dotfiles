return {
		{
			'nvim-telescope/telescope.nvim',
			dependencies = {'nvim-lua/plenary.nvim'},

		config = function()
			require('telescope').setup({
				defaults = {},
				mappings = {
					i = {
					},
				},
			})
			vim.keymap.set('n', '<C-p>', function()
				require('telescope.builtin').find_files({hidden = true})
			end)
			vim.keymap.set('n', '<leader>fg', function()
				require('telescope.builtin').live_grep({})
			end)
		end,
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({})
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	}
}
