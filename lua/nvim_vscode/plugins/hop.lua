return {
	{
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({
				quit_key = "<SPC>",
				jump_on_sole_occurrence = false,
				hint_position = require("hop.hint").HintPosition.END,
				--hint_offset = 1,
			})
		end,
	},
}
