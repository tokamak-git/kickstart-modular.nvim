local f = {
  'VonHeikemen/fine-cmdline.nvim',
  dependencies = {
    { 'MunifTanjim/nui.nvim' },
  },
}

f.keys = {
  { ':', '<cmd>FineCmdline<CR>', desc = 'Enter FineCmdline' },
}

return f
