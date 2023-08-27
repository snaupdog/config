require("toggleterm").setup{

tag = '*', config = function()
end,

}



local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
 return
end

vim.g.mapleader = " "
toggleterm.setup({
 size = 20,
 open_mapping = [[<leader>;]],
 hide_numbers = true,
 shade_filetypes = {},
 shade_terminals = true,
 shading_factor = 2,
 start_in_insert = true,
 insert_mappings = true,
 persist_size = true,
 -- direction = "string",
 close_on_exit = true,
 shell = vim.o.shell,
 -- float_opts = {
 --  border = "curved",
 --  winblend = 0,
 --  highlights = {
 --   border = "Normal",
 --   background = "Normal",
 --  },
 -- },
})

-- function _G.set_terminal_keymaps()
--   local opts = {noremap = true}
--   vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
-- end
--
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
--
-- local Terminal = require("toggleterm.terminal").Terminal
-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--
-- function _LAZYGIT_TOGGLE()
--  lazygit:toggle()
-- end
--
-- local node = Terminal:new({ cmd = "node", hidden = true })
--
-- function _NODE_TOGGLE()
--  node:toggle()
-- end
--
-- local python = Terminal:new({ cmd = "python3", hidden = true })
--
-- function _PYTHON_TOGGLE()
--  python:toggle()
--
-- t = {
--         name = "Terminal",
--         n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" }, -- Node Terminal
--         t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" }, -- (Optional) Htop, If you have htop in linux
--         p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" }, -- Python Terminal
--         -- f = { "<cmd>ToggleTerm direction=float<cr>", "Float" }, -- Floating Terminal
--
--         -- Play with size according to your needs.
--         h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" }, -- Horizontal Terminal
--         v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" }, -- Vertical Terminal
--     }
--
-- end
