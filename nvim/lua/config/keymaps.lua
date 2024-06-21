-- Visual Mode helper
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- clipboard-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])



vim.keymap.set("n", "<leader>q", ":qa!<CR>", {})
-- Fast saving with <leader> and s
vim.keymap.set("n", "<leader>ss", ":w<CR>", { desc = "save file" })
-- Move around splits
vim.keymap.set("n", "<leader>wh", "<C-w>h", {})
vim.keymap.set("n", "<leader>wj", "<C-w>j", {})
vim.keymap.set("n", "<leader>wk", "<C-w>k", {})
vim.keymap.set("n", "<leader>wl", "<C-w>l", {})
vim.keymap.set("n", "<leader>wq", ":wq!<CR>", {})

-- Making splits
vim.keymap.set("n", "<leader>wsh", ":split<CR>", { desc = "horizontal" })
vim.keymap.set("n", "<leader>wss", ":split<CR>", { desc = "horizontal" })
vim.keymap.set("n", "<leader>wsv", ":vsplit<CR>", { desc = "vertical" })
vim.keymap.set("n", "<leader>wsw", ":vsplit<CR>", { desc = "vertical" })

-- Reload configuration without restart nvim
vim.keymap.set("n", "<leader>r", ":so %<CR>", {})

-- Telescope
-- <leader> is a space now
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fc", builtin.commands, {})
vim.keymap.set("n", "<leader>ft", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = 'keymaps' })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = 'diagnostics' })

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {}) -- open/close

-- Terminal
vim.keymap.set("n", "<leader>t", ":NeotermToggle<CR>", { desc = "toggle terminal" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:NeotermToggle<CR>", { desc = "exit terminal" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>bl", ":bnext<CR>", { desc = "next" })
vim.keymap.set("n", "<leader>bh", ":bprevious<CR>", { desc = "previous" })
vim.keymap.set("n", "L", ":bnext<CR>", { desc = "next" })
vim.keymap.set("n", "H", ":bprevious<CR>", { desc = "previous" })
vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>", { desc = "pick goto" })
vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { desc = "pick delete" })

-- indenting
vim.api.nvim_set_keymap('n', '<Tab>', '>>_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-D>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
