local w = {
  'willothy/wezterm.nvim',
  opts = {
    create_commands = false,
  },
}

w.config = function()
  local wezterm = require 'wezterm'
  local config = wezterm.config
  function LaunchIrssiInWezTerm()
    wezterm.spawn 'irssi'
  end
  function LaunchLazygitInWezterm()
    wezterm.spawn 'lazygit'
  end

  function LaunchLazygitInWezterm() end

  -- Set the keymap
  vim.api.nvim_set_keymap('n', '<leader>i', ':lua LaunchIrssiInWezTerm()<CR>', { noremap = false, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>gg', ':lua LaunchLazygitInWezterm()<CR>', { noremap = false, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>tt', ':lua LaunchFlotingTermWezterm()<CR>', { noremap = false, silent = true })
end

return w
