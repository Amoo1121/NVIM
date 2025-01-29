return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "doom-one",
				theme = "catppuccin",
			},
		})
	end,
}
