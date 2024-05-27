local sidebar = {
  'sidebar-nvim/sidebar.nvim',
  lazy = false,
  opts = {
    open = true,
    sections = { 'todos', 'diagnostics', 'symbols' },
  },
  config = function()
    require('sidebar-nvim').setup {
      disable_default_keybindings = 0,
      bindings = nil,
      open = true,
      side = 'left',
      initial_width = 35,
      size = 35,
      hide_statusline = true,
      update_interval = 1000,
      sections = { 'datetime', 'git', 'diagnostics' },
      section_separator = { '', '-----', '' },
      section_title_separator = { '' },
      containers = {
        attach_shell = '/bin/sh',
        show_all = true,
        interval = 5000,
      },
      datetime = { format = '%a %b %d, %H:%M', clocks = { { name = 'local' } } },
      todos = { ignored_paths = { '~' } },
    }
  end,
  keys = {
    { '<leader>sb', '<cmd>SidebarNvimToggle<CR>', desc = 'Toggle SideBar' },
  },
}

return sidebar
