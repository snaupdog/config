-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)


    -- use "ziontee113/color-picker.nvim"

    use 'nvim-telescope/telescope.nvim'


    use 'wbthomason/packer.nvim'
    use 'xiyaowong/transparent.nvim'
    use 'folke/tokyonight.nvim'

    -- lsp

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",}

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use  'saadparwaiz1/cmp_luasnip'
    use  "rafamadriz/friendly-snippets"

    use "akinsho/toggleterm.nvim"

    use 'kylechui/nvim-surround'
    use "windwp/nvim-autopairs"
    use 'numToStr/Comment.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use "nvim-lua/plenary.nvim"
    use 'turbio/bracey.vim'
    use 'NvChad/nvim-colorizer.lua'




  if packer_bootstrap then
    require('packer').sync()
  end
end)
