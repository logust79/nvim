return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	opts = {
		ensure_installed = {
			"prettier",
			"stylua", -- lua formatter
			"isort", -- python formatter
			"black", -- python formatter
			"pylint",
			"eslint_d",
		},
	},
}
