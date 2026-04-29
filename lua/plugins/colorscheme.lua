return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		custom_highlights = {
			Visual = { bg = "#444444" },
		} or function(highlights, palette)
			return {}
		end, -- extend highlights
	},
	config = function(_, opts)
		require("tokyodark").setup(opts)
		vim.cmd("colorscheme tokyodark")
	end,
}
