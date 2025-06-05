return {
  {
    "Shatur/neovim-ayu",
    lazy = false, -- Set lazy to false to load the theme immediately
    config = function()
      require("ayu").setup {
        -- You can customize the theme here, see Ayu's documentation
      }
    end,
    priority = 1000,
  },
  -- {
  --   "ellisonleao/gruvbox.nvim", priority = 1000 , config = true
  -- },
  -- {
  --   {
  --     "nvim-treesitter/nvim-treesitter", 
  --     branch = 'master', 
  --     lazy = false, 
  --     build = ":TSUpdate"
  --   }
  -- },
}

-- require('ayu').setup({
--     mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--     terminal = true, -- Set to `false` to let terminal manage its own colors.
--     overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
-- })
