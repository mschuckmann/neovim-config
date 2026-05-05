-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set a local variable for convenience, including default options for silent and non-recursive mappings
local opts = { noremap = true, silent = true }

--Setup save as alt+w in insert and normal mode
vim.keymap.set('i', '<A-w>', '<C-o>:w<CR>', opts)
vim.keymap.set('n', '<A-w>', ':w<CR>', opts)
--Setup brief style Alt+b to open file or buffers using ff
vim.keymap.set('i', '<A-b>', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<A-b>', require('telescope.builtin').find_files, {})

-- Brief style delete without yanking
vim.keymap.set("n", "<M-d>", '"_dd', opts)
vim.keymap.set("v", "<M-d>", '"_dd', opts)
vim.keymap.set("i", "<M-d>", '<C-o>"_dd', opts)

-- Brief style exit Alt+x
vim.keymap.set("n", "<M-x>", ':qa<CR>', opts)
vim.keymap.set("v", "<M-x>", ':qa<CR>', opts)
vim.keymap.set("i", "<M-x>", '<C-o>:qa<CR>', opts)

vim.keymap.set("n", "<kPlus>", 'yy', opts)
vim.keymap.set("i", "<kPlus>", '<C-o>yy', opts)

vim.keymap.set("n", "<kMinus>", 'dd', opts)
vim.keymap.set("i", "<kMinus>", '<C-o >dd', opts)

-- Search for selected text in visual mode
vim.keymap.set("v", "//", [[y/\V<C-R>=escape(@", '/\')<CR><CR>]], { desc = "Search for selection" })

-- Make * and # work for visual selections
vim.keymap.set("x", "*", [[y/\V<C-R>=escape(@", '/\')<CR><CR>]])
vim.keymap.set("x", "#", [[y?\V<C-R>=escape(@", '?\')<CR><CR>]])

vim.keymap.set("n", "<leader>dv", function()
  local config = vim.diagnostic.config()
  vim.diagnostic.config({ virtual_text = not config.virtual_text })
end, { desc = "Toggle diagnostics virtual text" })
