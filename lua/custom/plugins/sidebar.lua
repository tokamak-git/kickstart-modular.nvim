return {
  'sidebar-nvim/sidebar.nvim',
  opts = {
    open = true,
    sections = { 'todos', 'diagnostics', 'containers' },
  },
  keys = {
    { '<leader>sb', '<cmd>SidebarNvimToggle<CR>', desc = 'Toggle SideBar' },
  },
}
