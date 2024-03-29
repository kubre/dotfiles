-- Copied directly from lazy nvim github as it should be
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    { "nvim-lua/plenary.nvim" },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
    },
    { 
        "olivercederborg/poimandres.nvim",
        lazy = false, 
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = true
    },
    { "christoomey/vim-tmux-navigator", lazy = false },
    { "ThePrimeagen/harpoon" },
    { "jiaoshijie/undotree", config = true },
    { "tpope/vim-fugitive" },
    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-nvim-lua" },
    { "L3MON4D3/LuaSnip" },
    { "rafamadriz/friendly-snippets" },
}

require("lazy").setup(plugins, opts)

