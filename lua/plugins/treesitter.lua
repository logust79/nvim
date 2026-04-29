return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			diagnostics = { disable = { "missing-fields" } },
			indent = { enable = true },
			--[=====[
			autotag = {
				enable = true,
			},
            --]=====]
			ensure_installed = {
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
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			rainbow = {
				enable = true,
				disable = { "html" },
				extended_mode = false,
				max_file_lines = nil,
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end,
}
