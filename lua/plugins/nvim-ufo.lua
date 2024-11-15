return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
        require("ufo").setup()
        vim.keymap.set("n", "zr", require("ufo").openAllFolds)
        vim.keymap.set("n", "zm", require("ufo").closeAllFolds)
    end,
}
