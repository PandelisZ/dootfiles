return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        color = {
          suggestion_color = "#f38ba8",
          cterm = 244,
        },
        log_level = "off", -- set to "off" to
        disable_inline_completion = false, --
        disable_keymaps = false, -- disables b
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    keys = {
      {
        "<Tab>",
        false,
        mode = { "i", "s" },
      },
      {
        "<S-Tab>",
        false,
        mode = { "i", "s" },
      },
    },
    dependencies = { "supermaven-inc/supermaven-nvim" },
    opts = function(_, opts)
      -- table.insert(opts.sources, 1, { name = "supermaven", priority = 100 })
    end,
  },
}
