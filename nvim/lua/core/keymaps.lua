


local silent = { silent = true }

vim.g.mapleader = " "


vim.keymap.set('n','<leader>n',':NvimTreeToggle<CR>')

vim.keymap.set('n','<leader>w','<C-w>w')




-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>]', builtin.find_files, {})

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)


-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)




-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Keep visual mode indenting
keymap("v", "<", "<gv", silent)
keymap("v", ">", ">gv", silent)

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)


-- map("n", "<leader>gn", ":NvimTreeFocus<CR>", opts)

-- Buffers
keymap("n", "gn", ":bn<CR>", silent)
keymap("n", "gp", ":bp<CR>", silent)
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- --> telescope mappings <--
-- map("n", "<leader>fd", ":Telescope diagnostics<cr>", opts)
-- map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
-- map("n", "<leader>fr", ":Telescope lsp_references<cr>", opts)
-- map("n", "<leader>oc", ":Telescope lsp_outgoing_calls<cr>", opts)
-- map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
-- map("n", "<leader>fb", ":Telescope buffers<cr>", opts)


-- autocompiler    
-- local autocmd = vim.api.nvim_create_autocmd
-- autocmd("FileType", { pattern = "python",
-- 	callback = function()
-- 		vim.api.nvim_buf_set_keymap(0,"n","<C-c>",":split<CR>:te python3 '%'<CR>i",opts)
-- 	end})
--
--
-- autocmd("FileType", { pattern = "c",
-- 	callback = function()
-- 		vim.api.nvim_buf_set_keymap(0,"n","<C-c>",":split<CR>:te g++ -Wshadow -Wall -o %:t:r % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && ./%:t:r<CR>i",opts)
-- 	end})
--






















