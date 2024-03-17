return {
  'coffebar/neovim-project',
  opts = {
    -- Project directories
    projects = {
      '~/go/src/github.com/tokamak-git/*',
      '~/go/src/github.com/bhumi-sh/*',
      '~/Projects/*',
      '~/.config/nvim',
      '~/Projects/advent-of-code/*',
      '~/Projects/exercism/gleam/*',
      '~/Projects/rust/*',
      '~/Projects/rust/autogpt/*',
    },
    -- Path to store history and sessions
    datapath = vim.fn.stdpath 'data', -- ~/.local/share/nvim/
    -- Load the most recent session on startup if not in the project directory
    last_session_on_startup = true,

    -- Overwrite some of Session Manager options
    session_manager_opts = {
      autosave_ignore_dirs = {
        vim.fn.expand '~', -- don't create a session for $HOME/
        '/tmp',
      },
      autosave_ignore_filetypes = {
        -- All buffers of these file types will be closed before the session is saved
        'ccc-ui',
        'gitcommit',
        'gitrebase',
        'qf',
        -- 'toggleterm',
      },
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.4',
      keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      -- {
      --   "<leader>spa",
      --  "<cmd>Telescope neovim-project discover<cr>",
      --     desc = '[S]earch [P]rojects [a]ll',
      -- },
        {
          '<leader>sp',
          '<cmd>Telescope neovim-project discover<cr>',
          desc = '[S]earch [P]rojects',
        },
      },
    },
    { 'Shatur/neovim-session-manager' },
  },
  lazy = false,
  priority = 100,
}
