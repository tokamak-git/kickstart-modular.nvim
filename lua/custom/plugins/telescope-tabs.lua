local tt = {
  'LukasPietzschmann/telescope-tabs',
  config = function()
    require('telescope').load_extension 'telescope-tabs'
    require('telescope-tabs').setup {
      -- Your custom config :^)
    }
  end,
  dependencies = { 'nvim-telescope/telescope.nvim' },
}
tt.keys = { -- Example mapping to toggle outline
  { '<leader>st', '<cmd>Telescope telescope-tabs list_tabs<CR>', desc = '[S]earch [T]abs' },
}

return tt
