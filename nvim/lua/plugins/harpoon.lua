return {
  { "nvim-lua/plenary.nvim" },
  {
    "ThePrimeagen/harpoon",
    cmd = "Harpoon",
    keys = {
      {
        "<leader>hh",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Add file to harpoon",
      },
      {
        "<leader>hm",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Toggle harpoon menu",
      },
      {
        "=",
        function()
          require("harpoon.ui").nav_next()
        end,
      },
      {
        "-",
        function()
          require("harpoon.ui").nav_prev()
        end,
      },
      {
        "<leader>h1",
        function()
          require("harpoon.ui").nav_file(1)
        end,
      },
      {
        "<leader>h2",
        function()
          require("harpoon.ui").nav_file(2)
        end,
      },
      {
        "<leader>h3",
        function()
          require("harpoon.ui").nav_file(3)
        end,
      },
    },
  },
}
