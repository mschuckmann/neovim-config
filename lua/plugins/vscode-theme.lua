return {
  {
    "Mofiqul/vscode.nvim",
    event = "VimEnter",
    config = function()
      require("vscode").setup({
        -- Optionally set the style (defaults to dark, which is Dark Modern)
        style = "dark", -- "dark" or "light"
        -- Enable transparent background
        transparent = true,
        -- Other configuration options can be found on the GitHub page
      })
      -- Load the colorscheme
      vim.cmd("colorscheme vscode")
    end,
  },
}
