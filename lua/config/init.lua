local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end


local opts = {
	defaults = {
		lazy = true
	},
	install = {
		colorscheme = {"catppuccin"}
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"tarPlugin",
			"netrwPlugin",
      "netrw",
			"tohtml",
			"tutor",
			"zipPlugin",
		}
	}

}

vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.autocmds")
require("config.keymaps")
require("lazy").setup('plugins', opts)
