return {
  { 'tpope/vim-repeat' },
  { 'tpope/vim-surround' },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
      require('nvim-autopairs').remove_rule('`')
    end
  },
  -- commenting with e.g. `gcc` or `gcip`
  -- respects TS, so it works in quarto documents
  {
    'numToStr/Comment.nvim',
    version = nil,
    branch = 'master',
    config = true, -- default settings
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true
  },
  {
    "chrishrb/gx.nvim",
    event = { "BufEnter" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true, -- default settings
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup({
        formatters = {
          label = require("copilot_cmp.format").format_label_text,
          insert_text = require("copilot_cmp.format").format_insert_text,
          preview = require("copilot_cmp.format").deindent,
        },
      }
      )
    end
  },
  {
    'mrjones2014/legendary.nvim',
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' },
    config = function()
      require('legendary').setup({
        extensions = {
          smart_splits = {
            smart_splits = {
              directions = { 'h', 'j', 'k', 'l' },
              mods = {
                -- for moving cursor between windows
                move = '<C>',
                -- for resizing windows
                resize = '<M>',
                -- for swapping window buffers
                swap = false, -- false disables creating a binding
              },
            },

          },
        }
      })
    end
  }
}
