return {
    {
        "AvivKermann/neovim-spotify",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("neovim-spotify").setup({})
        end
    }
}
