local f = {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  -- lazy = true,
  lazy = false,
  -- config = true,
  config = function()
    require('flutter-tools').setup {
      flutter_path = '/home/tokamak/snap/flutter/common/flutter/bin/flutter',
    }
  end,
  keys = {
    { '<leader>fr', ':FlutterRun<CR>', desc = '[F]lutter [R]un' },
    { '<leader>fd', ':FlutterDevices<CR>', desc = '[F]lutter [D]evices' },
    { '<leader>fe', ':FlutterEmulators<CR>', desc = '[F]lutter [E]mulators' },
    -- { '<leader>fre', ':FlutterReload<CR>', desc = '[F]lutter [R]eload fre' },
    { '<leader>fR', ':FlutterReload<CR>', desc = '[F]lutter [R]eload FR' },
  },
  debugger = {
    enabled = true,
    register_configurations = function(_)
      require('dap').configurations.dart = {}
      require('dap.ext.vscode').load_launchjs()
    end,
  },
}

return f
