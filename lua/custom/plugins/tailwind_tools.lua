-- tailwind-tools.lua
local t = {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
    'neovim/nvim-lspconfig', -- optional
  },
  opts = {}, -- your configuration
}

t.config = function()
  require('tailwind-tools').setup {
    -- your configuration
  }
end

return t
