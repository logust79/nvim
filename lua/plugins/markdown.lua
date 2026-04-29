return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	-- do :call mkdp#util#install() if not working
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_port = "8894"
		vim.g.mkdp_open_to_the_world = 1
	end,
	ft = { "markdown" },
}
