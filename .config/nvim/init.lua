vim.g.mapleader = ' '

vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.number = true

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

vim.opt.background = "dark"
vim.opt.termguicolors = true

require("config.lazy")
