return	{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()

		local configs = require("nvim-treesitter.configs")
		require 'nvim-treesitter.install'.compilers = { "clang" }
		configs.setup({
          	ensure_installed = { "c",  "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          	sync_install = false,
          	highlight = { enable = true },
          	indent = { enable = true },  
        })
end
}
