return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				-- Enable treesitter highlighting and disable regex syntax
				pcall(vim.treesitter.start)
				-- Enable treesitter-based indentation
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
		local ensure_installed = {
			"bash",
			"c",
			"css",
			"csv",
			"dockerfile",
			"gitignore",
			"groovy",
			"html",
			"javascript",
			"jinja",
			"jinja_inline",
			"jq",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"perl",
			"r",
			"regex",
			"python",
			"rust",
			"sql",
			"terraform",
			"toml",
			"tsv",
			"tsx",
			"typescript",
			"vim",
			"yaml",
		}
		local alreadyInstalled = require("nvim-treesitter.config").get_installed()
		local parsersToInstall = vim.iter(ensure_installed)
			:filter(function(parser)
				return not vim.tbl_contains(alreadyInstalled, parser)
			end)
			:totable()
		require("nvim-treesitter").install(parsersToInstall)
	end,
}
