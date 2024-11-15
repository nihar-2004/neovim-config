return {
	{
    	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls"  }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.clangd.setup({})
			lspconfig.rust_analyzer.setup({})
			vim.keymap.set('n','K',vim.lsp.buf.hover,{})
			vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
			vim.keymap.set({'n','v'}, '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
		end
	}

}
