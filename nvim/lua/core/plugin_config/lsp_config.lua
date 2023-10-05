require("mason").setup()
require("mason-lspconfig").setup()



require("mason-lspconfig").setup{
ensure_installed = {
    "html",
    "cssls" ,
    "lua_ls",
    "clangd",
    "pyright",
    "tsserver",
    "eslint",
    "pylsp",
    "emmet_ls"
},
}

local on_attach =function(_, _)
    vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{})
    vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})

    vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
    vim.keymap.set('n','gi',vim.lsp.buf.implementation,{})
    vim.keymap.set('n','K',vim.lsp.buf.hover,{})
    vim.keymap.set('n','gr',vim.require('telescope.builtin').lsp_references,{})
end


---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig")["html"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["pylsp"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["eslint"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["clangd"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["pyright"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig")["cssls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})


require("lspconfig")["tsserver"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})


require("lspconfig")["lua_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig")["emmet_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--
--
-- local on_attach =function(_, _)
--     vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{})
--     vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})
--
--     vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
--     vim.keymap.set('n','gi',vim.lsp.buf.implementation,{})
--     vim.keymap.set('n','K',vim.lsp.buf.hover,{})
--     vim.keymap.set('n','gr',vim.require('telescope.builtin').lsp_references,{})
-- end


-- require("lspconfig").lua_ls.setup{
--     on_attach=on_attach
-- }
--
-- require("lspconfig").cssls.setup{
--     on_attach=on_attach
-- }
--
-- require("lspconfig").clangd.setup{
--     on_attach=on_attach
-- }
-- require("lspconfig").tsserver.setup{
--     on_attach=on_attach
-- }
-- require("lspconfig").pyright.setup{
--     on_attach=on_attach
-- }
-- require("lspconfig").eslint.setup{
--     on_attach=on_attach
-- }
