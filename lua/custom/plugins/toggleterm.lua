local tt = {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
      shade_terminals = false,
    },
    keys = {
      -- { '<leader>t', ':ToggleTerm<CR>', desc = 'ToggleTerm' },
      { '<leader>tt', ':4ToggleTerm direction=float dir=git_dir<CR>', desc = 'ToggleTerm' },
      { '<leader>tl', ':2ToggleTerm direction=tab size=40 dir=git_dir<CR>', desc = 'ToggleTerm in new tab' },
      { '<leader>tr', ':3ToggleTerm direction=vertical size=40 dir=git_dir<CR>', desc = 'ToggleTerm right' },
    },
  },
}

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jj', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
return {}
