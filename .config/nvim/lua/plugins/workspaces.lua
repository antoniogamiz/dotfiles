-- We can move the sessions files to a common path
-- where it ca be added periodically to the git repository
-- of our dotfiles. That way we can share workspaces in both
-- linux and macos.
--
return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "/" },
		})
	end,
}
