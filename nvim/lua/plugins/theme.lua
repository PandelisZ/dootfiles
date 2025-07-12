-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {
  {"rose-pine/neovim"},
  {"sainnhe/gruvbox-material"},
  {"nyoom-engineering/oxocarbon.nvim"},
  {"ribru17/bamboo.nvim"},
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = true,
    opts = {
      -- dark: frappe light: latte
      flavour = "frappe",
      highlight_overrides = {
        all = function(colors)
            return {
                LineNr = { fg = colors.overlay1 },
            }
        end,
        latte = function(latte)
              return {
                lCursor = { bg = latte.maroon, fg = latte.text },
              }
        end,
      },
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {"rktjmp/lush.nvim"},
  { "savq/melange-nvim" },
  {
    "mcchrish/zenbones.nvim",
    requires = "rktjmp/lush.nvim",
    init = function()
      -- vim.cmd([[set background=light]])
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      -- colorscheme = "yang",
       -- colorscheme = "zenbones"
      --colorscheme = "melange"
      colorscheme = "oxocarbon"
    },
  }
} end
