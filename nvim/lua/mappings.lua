require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<leader>dut", "<cmd>lua require('dapui').toggle()<CR>")

map("n", "<leader>s", "<cmd>vsplit<CR>")
map ("n","<leader>j","<plug>(easymotion-overwin-f2)")
-- mapping for going to the last buffer before moving like with the command :e#
map("n", "<leader>b", "<cmd>b#<CR>")
--mapping for running :telescope diagnostics
map("n", "<leader>x", "<cmd>Telescope diagnostics<CR>")
-- mapping for toggle breakpoint with lua require'dap'.toggle_breakpoint()
map("n", "<leader>tb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
