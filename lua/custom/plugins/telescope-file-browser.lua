--lazy
local t = {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
}

t.config = function()
  require('telescope').load_extension 'file_browser'
  vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>')

  -- open file_browser with the path of the current buffer
  -- vim.keymap.set('n', '<leader>e', ':Telescope file_browser path=%:p:h select_buffer=true<CR>')

  -- Alternatively, using lua API
  -- vim.keymap.set('n', '<leader>e', function()
  --   require('telescope').extensions.file_browser.file_browser()
  -- end)
end

return t
