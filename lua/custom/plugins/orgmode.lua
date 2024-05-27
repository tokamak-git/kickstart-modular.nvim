local org = {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  dependencies = {
    'danilshvalov/org-modern.nvim',
  },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    }

    -- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
    -- add `org` to ignore_install
    -- require('nvim-treesitter.configs').setup {
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- }
  end,
}

local modern = {
  'danilshvalov/org-modern.nvim',
  config = function()
    local Menu = require 'org-modern.menu'

    require('orgmode').setup {
      ui = {
        menu = {
          handler = function(data)
            Menu:new({
              window = {
                margin = { 1, 0, 1, 0 },
                padding = { 0, 1, 0, 1 },
                title_pos = 'center',
                border = 'single',
                zindex = 1000,
              },
              icons = {
                separator = '➜',
              },
            }):open(data)
          end,
        },
      },
    }
  end,
}

local checkbox = {
  'massix/org-checkbox.nvim',
  config = function()
    require('orgcheckbox').setup()
  end,
  ft = { 'org' },
}

local headlines = {
  'lukas-reineke/headlines.nvim',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = true, -- or `opts = {}`
}

local bullets = {
  'akinsho/org-bullets.nvim',
  config = function()
    require('org-bullets').setup()
  end,
}

local mouse = {
  'chipsenkbeil/org-mouse.nvim',
  dependencies = { 'nvim-orgmode/orgmode' },
  config = function()
    require('org-mouse').setup()
  end,
}

local wiki = {
  'ranjithshegde/orgWiki.nvim',
  config = function()
    require('orgWiki').setup {
      wiki_path = { '~/Documents/Orgs/' },
      diary_path = '~/Documents/Orgs/diary/',
    }
  end,
}

local orgroam = {
  'chipsenkbeil/org-roam.nvim',
  tag = '0.1.0',
  dependencies = {
    {
      'nvim-orgmode/orgmode',
      tag = '0.3.4',
    },
  },
  config = function()
    require('org-roam').setup {
      directory = '~/orgfiles',
    }
  end,
}

return org, headlines, bullets, checkbox, mouse, modern, wiki, orgroam
