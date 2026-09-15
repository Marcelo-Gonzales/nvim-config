local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false, 
}

function M.config()
  -- Notice .config instead of .configs
  require("nvim-treesitter.config").setup {
    ensure_installed = { "c", "lua", "rust", "bash", "haskell" },
    sync_install = true,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M

