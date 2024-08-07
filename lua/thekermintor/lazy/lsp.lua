return {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        "j-hui/fidget.nvim",
    },
    config = function()
        local lsp_zero = require('lsp-zero')
        local cmp = require('cmp')
        local luasnip = require('luasnip')

        -- Setup Fidget
        require("fidget").setup({})

        -- Setup Mason
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                'tsserver',
                'rust_analyzer',
                'gopls',
                'lua_ls',
                'jsonls',
                'sqls',
                'bashls',
                'terraformls',
                'pyright',
            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = vim.tbl_deep_extend(
                            "force",
                            {},
                            vim.lsp.protocol.make_client_capabilities()
                        ),
                    })
                end,
            },
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        -- Setup completion
        cmp.setup({
            snippets = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            sources = {
                { name = 'path' },
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<Enter>'] = cmp.mapping.confirm({ select = true }),
                ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })

        -- Setup LSP Zero on attach
        lsp_zero.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            -- Key mappings
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>ar", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

            -- Disable Copilot for certain filetypes
            local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
            if filetype == "java" or filetype == "rust" then
                vim.api.nvim_command("Copilot disable")
            end
        end)

        -- Load Luasnip snippets
    end,
}
