vim.g.mapleader = " "
vim.keymap.set("n", "<C-n><C-n>", vim.cmd.Ex)

--vim.api.nvim_set_keymap('n', '<C-N><C-N>', ":Lexplore<CR> :vertical resize 30<CR>", { noremap = true })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

