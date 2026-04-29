return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- Specify how the border looks like
		local border = {
			{ "┌", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "┐", "FloatBorder" },
			{ "│", "FloatBorder" },
			{ "┘", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "└", "FloatBorder" },
			{ "│", "FloatBorder" },
		}

		-- Add the border on hover and on signature help popup window
		local handlers = {
			--["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
			["textDocument/hover"] = vim.lsp.buf.hover({ border = border }),
			--["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
			["textDocument/signatureHelp"] = vim.lsp.buf.signature_help({ border = border }),
		}

		-- Add border to the diagnostic popup window
		--local lspconfig = require("lspconfig")
		vim.diagnostic.config({
			virtual_text = {
				prefix = "■ ", -- Could be '●', '▎', 'x', '■', , 
			},
			float = { border = "rounded" },
		})

		--[[
		-- Add the border (handlers) to the lua language server
		lspconfig.lua_ls.setup({
			handlers = handlers,
			-- The rest of the server configuration
		})

		lspconfig.rust_analyzer.setup({
			handlers = handlers,
		})
		-- Add the border (handlers) to the pyright server
		lspconfig.pyright.setup({
			handlers = handlers,
		})
        --]]
	end,
}
