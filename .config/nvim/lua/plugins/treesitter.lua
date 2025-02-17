return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = {'lua', 'javascript', 'c', 'python', 'php', 'bash', 'json', 'html', 'java', 'go', 'ruby', 'markdown', 'markdown_inline'},
				highlight = {enable = true},
				indent = {enable = true},
			})
		end,
	}
}

