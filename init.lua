-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").load_extension("project")

-- In your init.lua or lsp config file
--require('lspconfig').clangd.setup({
--  cmd = {
--    "clangd",
--    "--background-index",
--    "--query-driver=/build/build/tmp-glibc/work/cortexa53-crypto-oe-linux/mad-hald/0.0.1+git/recipe-sysroot-native/usr/bin/aarch64-oe-linux/aarch64-oe-linux-g++", -- Path to your cross-compiler
--    "--clang-tidy",
--  },
 -- root_dir = require('lspconfig').util.root_pattern("compile_commands.json", ".git"),
--})

