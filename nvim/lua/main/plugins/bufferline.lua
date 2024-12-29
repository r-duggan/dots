return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				indicator = {
					style = "none",
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "NvimTree",
						hightlight = "Directory",
						text_align = "center",
						separator = " ",
					},
				},
			},
		})
	end,
}
