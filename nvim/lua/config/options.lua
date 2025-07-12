-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.iskeyword:append("-") -- treat dash separated words as a word text object

-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = true

-- Disable clipboard sync
vim.opt.clipboard = ""

-- Slow shutdown time
vim.opt.fsync = false

-- fuck off animations
vim.g.snacks_animate = false

vim.g.python3_host_prog = "/Users/pz/w/cosine/.venv/bin/python"
vim.g.python_host_prog = "/Users/pz/w/cosine/.venv/bin/python"

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
