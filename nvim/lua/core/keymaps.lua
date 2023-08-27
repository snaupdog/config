
vim.g.mapleader = " "


local silent = { silent = true }
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

keymap.set('n','<leader>n',':NvimTreeToggle<CR>')

keymap.set('n','<leader>w','<C-w>w')

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab





-- Better escape using jk in insert and terminal mode
map("i", "jk", "<ESC>", opts)
map("t", "jk", "<C-\\><C-n>", opts)


-- Resizing panes
map("n", "<Left>", ":vertical resize +1<CR>", opts)
map("n", "<Right>", ":vertical resize -1<CR>", opts)
map("n", "<Up>", ":resize -1<CR>", opts)
map("n", "<Down>", ":resize +1<CR>", opts)




-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", silent)
map("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Keep visual mode indenting
map("v", "<", "<gv", silent)
map("v", ">", ">gv", silent)

-- Save file by CTRL-S
map("n", "<C-s>", ":w<CR>", silent)
map("i", "<C-s>", "<ESC> :w<CR>", silent)


-- map("n", "<leader>gn", ":NvimTreeFocus<CR>", opts)

-- Buffers
map("n", "gn", ":bn<CR>", silent)
map("n", "gp", ":bp<CR>", silent)

--> telescope mappings <--
map("n", "<leader>fd", ":Telescope diagnostics<cr>", opts)
map("n", "<leader>]", ":Telescope find_files<cr>", opts)
map("n", "<leader>fr", ":Telescope lsp_references<cr>", opts)
map("n", "<leader>oc", ":Telescope lsp_outgoing_calls<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", opts)























