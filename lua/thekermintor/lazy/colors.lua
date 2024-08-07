return {
    {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
	    vim.cmd("colorscheme rose-pine")
        vim.cmd("highlight NetrwDir guifg=#ebbcba")
        vim.cmd("highlight netrwVersion guifg=#ebbcba")
        vim.cmd("highlight netrwList guifg=#ebbcba")
	end
    },

}
