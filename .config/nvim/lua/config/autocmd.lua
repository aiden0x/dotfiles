local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local filetype_group = augroup("filetype", { clear = true })

autocmd({ "BufNewFile", "BufRead" }, {
	group = filetype_group,
	pattern = { "todo.txt", "done.txt", "*.todo.txt", "*.done.txt" },
	command = "setlocal ft=todotxt",
})
autocmd({ "BufNewFile", "BufRead" }, {
	group = filetype_group,
	pattern = { "*.ejs" },
	command = "setlocal ft=html",
})
