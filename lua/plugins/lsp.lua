return {
  "neovim/nvim-lspconfig",
  config = function()
    local servers = {
      clangd = {
        cmd = { "clangd" },
        filetypes = { "c", "cpp" },
      },

      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
            },
          },
        },
      },

      html = {},
      cssls = {},
      tsserver = {
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },

      dartls = {
        cmd = { "dart", "language-server", "--protocol=lsp" },
        filetypes = { "dart" },
      },

    }

    for name, opts in pairs(servers) do
      vim.lsp.config(name, opts)
      vim.lsp.enable(name)
    end
  end,
}
