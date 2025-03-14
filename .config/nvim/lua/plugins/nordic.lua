return {
		{
		'AlexvZyl/nordic.nvim',
		lazy = false,
		priority = 1000,
		config = function()
				require("nordic").setup({
						transparent = {
							bg = true,
						},
						on_highlight = function(highlights, palette)
							--highlights.Normal = {
							--	bg = palette.black0
							--}
							highlights.Visual = {
								bg = palette.grey2
							}
						end,
				})
			require('nordic').load()
		end,
	}
}
