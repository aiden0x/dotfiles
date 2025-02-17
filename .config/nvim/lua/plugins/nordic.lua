return {
		{
		'AlexvZyl/nordic.nvim',
		lazy = false,
		priority = 1000,
		config = function()
				require("nordic").setup({
						on_highlight = function(highlights, palette) 
								highlights.Normal = {
										bg = "#000000"
								}
						end,
				})
			require('nordic').load()
		end,
	}
}
