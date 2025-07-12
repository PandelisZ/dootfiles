return {
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
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
