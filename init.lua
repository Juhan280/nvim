-- mapleader is needed to be defined before anything else
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Set an empty winbar by default. So when the real winbar is loaded,
-- it doesn't shift the entire buffer by one line
vim.opt.winbar = " "

-- Allow differentiating between android and other os because
-- termux doesn't support some features
vim.os = { name = '' }
local f = io.popen("uname -o", "r")
if f then
	local output = f:read("*a")
	f:close()
	if output then
		vim.os.name = output:sub(1, -2)
	end
end
function vim.os.isAndroid()
	return vim.os.name == "Android"
end

-- Install folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.cmd('echo "Installing `lazy.nvim`" | redraw')
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

---@type LazyConfig
local opts = {
	defaults = { lazy = true, version = "*" },
	install = { colorscheme = { "tokyonight" } },
	ui = { border = "rounded" },
	checker = { enabled = true, notify = false },
	change_detection = { notify = false },
}

require("lazy").setup("plugins", opts)
require("nvimrc")
