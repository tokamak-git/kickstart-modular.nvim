return {
  'sidebar-nvim/sidebar.nvim',
  opts = {
    open = true,
    sections = { 'todos', 'diagnostics', 'containers' },
  },
  config = function()
    require('sidebar-nvim').setup()
  end,
  keys = {
    { '<leader>sb', '<cmd>SidebarNvimToggle<CR>', desc = 'Toggle SideBar' },
  },
}
