local t = {
  'aserowy/tmux.nvim',
  config = function()
    return require('tmux').setup()
  end,
}

return t
