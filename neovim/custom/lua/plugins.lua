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
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {"c", "java", "lua", "vim", "vimdoc", "python", "javascript", "typescript", "bash", "dockerfile", "yaml"},
			auto_install = true,
			highlight = {
				enable = true
			}
		})
        end
    },

    "m4xshen/autoclose.nvim",
    "morhetz/gruvbox",
    "patstockwell/vim-monokai-tasty",

    {
        "datsfilipe/min-theme.nvim",
        config = function()
	    require("min-theme").setup({
		    italics = {
			    comments = false,
			    keywords = false,
			    functions = false,
			    strings = false,
			    variables = false
		    }
	    })
	end
    }
})

-- gruvbox config
vim.g.gruvbox_bold = '0'
vim.g.gruvbox_italic = '0'

require("autoclose").setup({
    keys = {
	["("] = { escape = false, close = true, pair = "()" },
	["["] = { escape = false, close = true, pair = "[]" },
	["{"] = { escape = false, close = true, pair = "{}" },

	[">"] = { escape = true, close = false, pair = "<>" },
	[")"] = { escape = true, close = false, pair = "()" },
	["]"] = { escape = true, close = false, pair = "[]" },
	["}"] = { escape = true, close = false, pair = "{}" },

	['"'] = { escape = true, close = true, pair = '""' },
	["'"] = { escape = true, close = true, pair = "''" },
	["`"] = { escape = true, close = true, pair = "``" },
    },
    options = {
	disabled_filetypes = { "text" },
	disable_when_touch = false,
	touch_regex = "[%w(%[{]",
	pair_spaces = false,
	auto_indent = true,
	disable_command_mode = false,    
    },
})

