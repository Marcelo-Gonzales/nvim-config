local M = {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig', -- Kept for server layout templates
  },
}

local mason_managed = {"lua_ls", "rust_analyzer", "clangd", "basedpyright", "ruff" }

M.servers = { "lua_ls", "rust_analyzer", "clangd", "basedpyright", "ruff", "hls" }



function M.config()
  -- 1. Initialize core Mason package manager
  require("mason").setup()
  
  -- 2. Configure Mason's LSP translation bridge
  require("mason-lspconfig").setup {
    ensure_installed = mason_managed,
  }

  -- 3. Loop through your servers and safely register them natively
  for _, server in ipairs(M.servers) do
    -- Using native Neovim 0.11 orchestration instead of legacy lspconfig framework
    vim.lsp.enable(server)
  end

  -- Enable code context diagnostics right inside your buffer line
  vim.diagnostic.config({ virtual_text = true })
end

return M

