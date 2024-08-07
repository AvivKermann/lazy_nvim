return {
    {
        "theprimeagen/harpoon",

        config = function()
            local harpoon = require("harpoon")
            harpoon.setup({
                global_settings = {
                    save_on_change = true,
                },
            })

            vim.keymap.set("n", "<leader>a", function() harpoon.add_file() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui.toggle_quick_menu() end)
            vim.keymap.set("n", "<leader>r", function() harpoon.remove_file() end)
            vim.keymap.set("n", "<C-p>", function() harpoon.ui.nav_prev() end)
            vim.keymap.set("n", "<C-n>", function() harpoon.ui.nav_next() end)
        end,
    },
}

