return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
	},
    opts = {
        ensure_installed = {
            "cssls",
            "eslint",
            "html",
            "jsonls",
            "ts_ls",
            "pyright",
            "tailwindcss",
            "rust_analyzer",
            "lua_ls",
        },
    },
}
