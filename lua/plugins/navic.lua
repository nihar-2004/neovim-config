return {
	"SmiteshP/nvim-navic",
	dependencies = { "neovim/nvim-lspconfig" },
	config = function()
		local navic = require("nvim-navic")
		navic.setup({
			lsp = { auto_attach = true },
		})
	end,
}
