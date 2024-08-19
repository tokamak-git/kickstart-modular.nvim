local w = {
  'willothy/wezterm.nvim',
  opts = {
    create_commands = false,
  },
}

w.config = function()
  local wezterm = require 'wezterm'

  function LaunchIrssiInWezTerm()
    wezterm.spawn 'irssi'
  end

  -- Set the keymap
  vim.api.nvim_set_keymap('n', '<leader>i', ':lua LaunchIrssiInWezTerm()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>gg', wezterm.spawn 'lazygit', { noremap = true, silent = true })
end

return w
