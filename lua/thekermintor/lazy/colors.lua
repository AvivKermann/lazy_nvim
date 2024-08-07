function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
        ColorMyPencils()
        vim.cmd("highlight NetrwDir guifg=#ebbcba")
        vim.cmd("highlight netrwVersion guifg=#ebbcba")
        vim.cmd("highlight netrwList guifg=#ebbcba")
	end
    },

}
