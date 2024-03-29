local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended setting from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIdentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
