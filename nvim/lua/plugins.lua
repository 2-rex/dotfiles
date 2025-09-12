vim.pack.add({
  { src = "https://github.com/catppuccin/nvim.git", name = "catppuccin" },
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/nvim-mini/mini.completion",
})

vim.cmd.colorscheme "catppuccin"

--- PLUGIN CONFIG ---
---

-- lualine
require("lualine").setup({
  options = {
    theme = "moonfly",
    disabled_filetypes = {
      statusline = {
        "netrw", -- don't show lualine in netrw window
      },
    },
  },
})

-- mason/lsp
require("mason").setup()
vim.lsp.enable({ "lua_ls", "gopls" })

vim.keymap.set("n", "<space>lf", vim.lsp.buf.format)

-- mini.completion
require("mini.completion").setup()
