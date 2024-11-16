return {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = { 
                separator_style = "slope",
                        
            }
        })
    end,
}
