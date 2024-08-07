return {
    {
        "nvim-telescope/telescope.nvim",

        tag = "0.1.5",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
        },

        config = function()
            require("telescope").setup({})

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.git_files, {})

            -- searches for the current buffer word in grep string
            vim.keymap.set("n", "<leader>fc", function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word})
            end)

            -- searches for the entire word in grep string
            vim.keymap.set("n", "<leader>fC", function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word})
            end)

            vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup ({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            })
        require("telescope").load_extension("ui-select")
        end
    },
}
