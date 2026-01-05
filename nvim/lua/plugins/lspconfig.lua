return {
  { "qvalentin/helm-ls.nvim", ft = "helm" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
        },
      } },
      inlay_hints = { enabled = false },
      setup = {
        rust_analyzer = function()
          return true
        end,
        prettierd = function()
          return false
        end,
        prettier = function()
          return false
        end,
        vtsls = function()
          Snacks.util.lsp.on({ name = "vtsls" }, function(_, client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end)
        end,
      },
    },
  },
}
