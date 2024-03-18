local o = {
  'hedyhli/outline.nvim',
  lazy = true,
  cmd = { 'Outline', 'OutlineOpen' },
  opts = {
    -- Your setup opts here
    position = 'left',
  },
}

o.keys = { -- Example mapping to toggle outline
  { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle [O]utline' },
}

return o
