return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>a', "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = 'Harpoon: Add file' },
    { '<C-e>', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = 'Harpoon: Toggle menu' },
    { '<leader>1', "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = 'Harpoon: Go to file 1' },
    -- Add more keybindings as needed
    { '<leader>2', "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = 'Harpoon: Go to file 2' },
    { '<leader>3', "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = 'Harpoon: Go to file 3' },
  },
  config = function()
    require('harpoon').setup()
  end,
}
