-- Example: Enable auto-session in your LazyVim config
return {
	{
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/Projects" },
			})
		end,
	},
}
