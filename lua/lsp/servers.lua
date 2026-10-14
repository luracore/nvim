return {
  mason = {
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
    ts_ls = {},
  },

  system = {
    clangd = {
      cmd = { "clangd" },
      filetypes = { "c", "cpp" },
    },

    dartls = {
      cmd = { "dart", "language-server", "--protocol=lsp" },
      filetypes = { "dart" },
    },
  },
}
