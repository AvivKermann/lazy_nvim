return {
    {
        "rcarriga/nvim-notify",
        lazy = false,
        config = function()
            local notify = require("notify")
            notify.setup({
                stages = "fade",
                timeout = 50,
                fps = 60,
            })
            vim.notify = notify
            -- so the notification colors will be the same as rose pine
            vim.cmd([[
                augroup CustomNotifyHighlights
                    autocmd!
                    autocmd ColorScheme * highlight NotifyERRORBorder guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyWARNBorder guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyINFOBorder guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyDEBUGBorder guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyTRACEBorder guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyERRORIcon guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyWARNIcon guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyINFOIcon guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyDEBUGIcon guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyTRACEIcon guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyERRORTitle guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyWARNTitle guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyINFOTitle guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyDEBUGTitle guifg=#ebbcba
                    autocmd ColorScheme * highlight NotifyTRACETitle guifg=#ebbcba
                    autocmd ColorScheme * highlight link NotifyERRORBody Normal
                    autocmd ColorScheme * highlight link NotifyWARNBody Normal
                    autocmd ColorScheme * highlight link NotifyINFOBody Normal
                    autocmd ColorScheme * highlight link NotifyDEBUGBody Normal
                    autocmd ColorScheme * highlight link NotifyTRACEBody Normal
                augroup END
            ]])
        end
    }
}
