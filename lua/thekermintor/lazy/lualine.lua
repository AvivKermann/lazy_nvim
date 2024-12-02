return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()

            -- This starts the spotify status line scraper.
            local status = require("neovim-spotify").status
            status:start()

            require("lualine").setup({
                options = { theme = "rose-pine" },
                sections = {
                    lualine_x = {
                        status.listen
                    }
                }
            })
        end
    }
}
