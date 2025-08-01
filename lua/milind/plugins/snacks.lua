return {
  'folke/snacks.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  priority = 1000,
  lazy = false,
  event = 'VimEnter',
  opts = {
    dashboard = {
      enabled = true,
    },
  },
  keys = {
    {
      '<leader>bd',
      function()
        local Snacks = require 'snacks'
        Snacks.bufdelete.delete()
      end,
      desc = '[B]uffer [D]elete all',
    },
    {
      '<leader>bD',
      function()
        local Snacks = require 'snacks'
        Snacks.bufdelete.all()
      end,
      desc = '[B]uffer [D]elete all',
    },
    {
      '<leader>bo',
      function()
        local Snacks = require 'snacks'
        Snacks.bufdelete.other()
      end,
      desc = '[B]uffer [D]elete [O]thers',
    },
  },
}
