require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "vim", "vimdoc", "query" ,"python","javascript"},
  -- A list of parser names, or "all"
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },

run = function()
           local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
           ts_update()
       end,
}



