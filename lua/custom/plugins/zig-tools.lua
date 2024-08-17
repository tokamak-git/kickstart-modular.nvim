local z = {
  'NTBBloodbath/zig-tools.nvim',
  -- Load zig-tools.nvim only in Zig buffers
  ft = 'zig',
  requires = {
    {
      'akinsho/toggleterm.nvim',
      config = function()
        require('toggleterm').setup()
      end,
    },
    {
      'nvim-lua/plenary.nvim',
      module_pattern = 'plenary.*',
    },
  },
}
z.config = function()
  -- Initialize with default config
  require('zig-tools').setup()
end

z.keys = {
  { '<leader>zb', ':Zig build<CR>', desc = '[Z]ig [B]uild' },
  { '<leader>zt', ':Zig build test<CR>', desc = '[Z]ig test' },
  { '<leader>zr', ':Zig run<CR>', desc = '[Z]ig [R]un' },
  -- { '<leader>zb', ':Zig build<CR>', desc = 'zig build' },
}

return z
-- return {}
