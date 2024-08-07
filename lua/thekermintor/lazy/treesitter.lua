return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {"bash", "lua","java", "typescript","javascript","python","go"},

            sync_install = false,

            auto_install = false,


            highlight = {
                enable = true,
            },
            additional_vim_regex_highlighting = true
        }
    end
}
