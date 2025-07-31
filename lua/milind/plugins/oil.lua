return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = false,
      win_options = {
        list = true,
      },
    },
    keymaps = {
      ['g?'] = { 'actions.show_help', mode = 'n' },
      ['l'] = 'actions.select',
      ['<C-p>'] = 'actions.preview',
      ['q'] = { 'actions.close', mode = 'n' },
      ['<C-l>'] = 'actions.refresh',
      ['h'] = { 'actions.parent', mode = 'n' },
      ['_'] = { 'actions.open_cwd', mode = 'n' },
      ['`'] = { 'actions.cd', mode = 'n' },
      ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
      ['gs'] = { 'actions.change_sort', mode = 'n' },
      ['gx'] = 'actions.open_external',
      ['H'] = { 'actions.toggle_hidden', mode = 'n' },
      ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
    },
  },

  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  lazy = false,
  keys = {
    { '<leader>e', '<CMD>Oil --float<CR>', { desc = 'Open Oil [E]xplorer' } },
  },
}
