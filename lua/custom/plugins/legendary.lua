local l = {
  'mrjones2014/legendary.nvim',
  version = 'v2.13.9',
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  -- dependencies = { 'kkharji/sqlite.lua' }
}

l.config = function()
  require('legendary').setup {
    -- load extensions
    extensions = {
      -- automatically load keymaps from lazy.nvim's `keys` option
      lazy_nvim = true,
      which_key = {
        -- Automatically add which-key tables to legendary
        -- see WHICH_KEY.md for more details
        auto_register = false,
        -- you can put which-key.nvim tables here,
        -- or alternatively have them auto-register,
        -- see WHICH_KEY.md
        mappings = {},
        opts = {},
        -- controls whether legendary.nvim actually binds they keymaps,
        -- or if you want to let which-key.nvim handle the bindings.
        -- if not passed, true by default
        do_binding = true,
        -- controls whether to use legendary.nvim item groups
        -- matching your which-key.nvim groups; if false, all keymaps
        -- are added at toplevel instead of in a group.
        use_groups = true,
      },
      -- load keymaps and commands from nvim-tree.lua
      nvim_tree = true,
      -- load commands from smart-splits.nvim
      -- and create keymaps, see :h legendary-extensions-smart-splits.nvim
      smart_splits = {
        directions = { 'h', 'j', 'k', 'l' },
        mods = {
          move = '<C>',
          resize = '<M>',
          -- for swapping window buffers
          swap = false, -- false disables creating a binding
        },
      },
      -- load commands from op.nvim
      op_nvim = true,
      -- load keymaps from diffview.nvim
      diffview = true,
    },
  }
end

return l
