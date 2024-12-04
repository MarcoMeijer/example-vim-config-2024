vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<A-s>", ":noa w<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>li")

vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")

vim.keymap.set("n", "<A-w>", "<Cmd>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("t", "<A-w>", "<Cmd>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<A-q>", "<Cmd>ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<A-q>", "<Cmd>ToggleTerm direction=float<CR>")

local Terminal  = require('toggleterm.terminal').Terminal
local refact = Terminal:new({ cmd="refact .", direction="float", hidden=true })

function _refact_toggle()
  refact:toggle()
end

vim.api.nvim_set_keymap("n", "<A-e>", "<cmd>lua _refact_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<A-e>", "<cmd>lua _refact_toggle()<CR>", {noremap = true, silent = true})

