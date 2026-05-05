-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Restore session on startup
vim.api.nvim_create_autocmd("VimEnter", {
  nested = true,
  callback = function()
    if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
      require("persistence").load()
    end
  end,
})

-- Start terminals in terminal mode
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert"
})
-- Also apply when switching back to a terminal buffer
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "term://*",
  command = "startinsert"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "neotree", "aerial", "grug-far" }, -- Add filetypes to disable here
  callback = function(args)
    vim.b[args.buf].edgy_disable = true
  end,
})
