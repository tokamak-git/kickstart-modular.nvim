local f = {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = true,
}
f.keys = {
  f = {
    name = 'flutter',
    r = { ':FlutterRun<CR>', desc = '[F]lutter [R]un' },
    d = { ':FlutterDevices<CR>', desc = '[F]lutter [D]evices' },
    e = { ':FlutterEmulators<CR>', desc = '[F]lutter [E]mulators' },
    re = { ':FlutterReload<CR>', desc = '[F]lutter [R]eload' },
    R = { ':FlutterReload<CR>', desc = '[F]lutter [R]eload' },
  },
}

return f
