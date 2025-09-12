-- file for keymaps
--
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
local keymap = vim.keymap.set

-- better indent
-- indent and select the same area again - no need to reselect to reindent.
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- paste over the highlighted text without yanking it
-- delete into blackhole register and paste it after the cursor
keymap("v", "p", '"_dP"')

-- move lines -----------------------------------------------------------------

-- use :motion command to move the current line to one line below and filter
-- the line

keymap("n", "<A-j>", ":m .+1<CR>==")
-- in the visual mode, move the selection to the next line of the next of the
-- selection.
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")

-- same as the normal mode, but with a <ESC> first and filtering into normal
-- mode after.
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi")

keymap("n", "<A-k>", ":m .-2<CR>==")
keymap("v", "<A-k>", ":m '>-2<CR>gv=gv")
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi")

--------------------------------------------------------------------------------

-- resize window ---------------------------------------------------------------

-- pretty simple, just use the resize command
keymap("n", "<A-up>", ":res +2<CR>")
keymap("n", "<A-down>", ":res -2<CR>")
keymap("n", "<A-left>", ":vert res -2<CR>")
keymap("n", "<A-right>", ":vert res +2<CR>")

--------------------------------------------------------------------------------
---
--- map jk to ESC
keymap("i", "jk", "<ESC>")

-- change window ---------------------------------------------------------------
keymap("n", "<leader>wh", "<C-W>h")
keymap("n", "<leader>wl", "<C-W>l")
keymap("n", "<leader>wj", "<C-W>j")
keymap("n", "<leader>wk", "<C-W>k")

-- diagnostics -----------------------------------------------------------------
keymap("n", "[d", function() vim.diagnostic.goto_prev() end)
keymap("n", "]d", function() vim.diagnostic.goto_prev() end)

-- open terminal in horizontal split -------------------------------------------
keymap("n", "<leader>ht", "<cmd>15split | term<cr>A", { desc = "open terminal in vertical split" })
keymap("t", "jk", "<c-\\><c-n>", { desc = "jk to enter terminal normal mode" })

-- toggle netrw window
keymap("n", "<leader>e", "<cmd>Lexplore<cr>", { desc = "toggle netrw window" })

-- buffers
keymap("n", "<leader>fb", "<cmd>buffers<cr>:buffer<space>", { desc = "find buffers" })
