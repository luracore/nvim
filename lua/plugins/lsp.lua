return {
  "neovim/nvim-lspconfig",
  config = function()
    local diagnostic_signs = {
      Error = "✘",
      Warn  = "▲",
      Hint  = "●",
      Info  = "●",
    }

    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = { 
        current_line = true 
      },
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = false,

      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = diagnostic_signs.Error,
          [vim.diagnostic.severity.WARN]  = diagnostic_signs.Warn,
          [vim.diagnostic.severity.HINT]  = diagnostic_signs.Hint,
          [vim.diagnostic.severity.INFO]  = diagnostic_signs.Info,
        }
      },
    })

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


      ts_ls = {
        cmd = { "npx", "--yes", "-p", "typescript", "-p", "typescript-language-server", "typescript-language-server", "--stdio" },
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
