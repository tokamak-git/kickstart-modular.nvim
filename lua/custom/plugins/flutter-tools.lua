return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = true,
  keys = {
    { '<leader>fr', ':FlutterRun<CR>', desc = '[F]lutter [R]un' },
    { '<leader>fd', ':FlutterDevices<CR>', desc = '[F]lutter [D]evices' },
    { '<leader>fe', ':FlutterEmulators<CR>', desc = '[F]lutter [E]mulators' },
    -- { '<leader>fre', ':FlutterReload<CR>', desc = '[F]lutter [R]eload fre' },
    { '<leader>fR', ':FlutterReload<CR>', desc = '[F]lutter [R]eload FR' },
  },
}
