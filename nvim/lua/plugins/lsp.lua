return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = {'lua_ls', 'lemminx', 'ts_ls', 'intelephense', 'ast_grep', 'bashls'}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			lspconfig.lua_ls.setup({capabilities})
			lspconfig.ts_ls.setup({capabilities})
			lspconfig.lemminx.setup({capabilities})
			lspconfig.intelephense.setup({capabilities})
			lspconfig.ast_grep.setup({capabilities})
			lspconfig.bashls.setup({capabilities})

			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action)
		end
	},
}
