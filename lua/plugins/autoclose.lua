return {
	"m4xshen/autoclose.nvim",
	config = function()
		local autoclose = require("autoclose")
		autoclose.setup({
			options = {
				disable_when_touch = true,
			},
		})
	end,
}
