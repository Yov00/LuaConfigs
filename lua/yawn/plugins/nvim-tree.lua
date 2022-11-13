local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_respect_buf_cwd = 0
vim.g.rooter_pattern = { ".git", "Makefile", "_darcs", ".hg", ".bzr", ".svn", "node_modules", "CMakeLists.txt" }
vim.g.outermost_root = true

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	-- Show current file dir in tree
	update_focused_file = {
		enable = true,
		update_cwd = false,
		ignore_list = {},
	},
	-- 	git = {
	-- 		ignore = false,
	-- 	},
})
