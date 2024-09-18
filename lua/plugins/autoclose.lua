return { 
	{
		'm4xshen/autoclose.nvim',
		config = function()
			require("autoclose").setup({
				keys = {
					["$"] = { escape = true, close = false, pair = "$$", disabled_filetypes = {} },
				},
			})
		end
	},

	{ 
		'windwp/nvim-ts-autotag',
		config = function()
			enable_close = true, -- Auto close tags
			require('nvim-ts-autotag').setup({
			opts = {
			-- Defaults
			enable_rename = true, -- Auto rename pairs of tags
			enable_close_on_slash = false -- Auto close on trailing </
		},
		-- Also override individual filetype configs, these take priority.
		-- Empty by default, useful if one of the "opts" global settings
		-- doesn't work well in a specific filetype
		per_filetype = {
		["html"] = { enable_close = false },
		["ejs"] = { enable_close = false }
}
})
end 
}

}
