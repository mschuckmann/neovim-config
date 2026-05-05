return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when you open a file
  opts = {
    options = { "buffers", "curdir", "tabpages", "winsize", "blank", "terminal", "options"}
    -- add any custom options here
  },
}

