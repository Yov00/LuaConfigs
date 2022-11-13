-- vim.cmd("colorscheme nightfly")
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
-- 	print("Colorscheme not found!")
-- 	return
-- end

vim.cmd("colorscheme dracula")
local status, _ = pcall(vim.cmd, "colorscheme dracula")
if not status then
	print("Colorscheme not found!")
	return
end
