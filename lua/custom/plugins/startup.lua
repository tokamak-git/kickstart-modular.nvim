local s = {
  'startup-nvim/startup.nvim',
  requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('startup').setup { theme = 'startify' }
    vim.g.startup_bookmarks = {
      ['I'] = '~/.config/nvim/init.lua',
      ['F'] = '~/.config/fish/config.fish',
      ['T'] = '~/.config/tmux/tmux.conf',
      ['K'] = '~/.config/kitty/kitty.conf',
      ['Z'] = '~/.zshrc',
    }
  end,
}

return s
