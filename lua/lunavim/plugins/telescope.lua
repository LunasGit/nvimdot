return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {'<leader>pf', '<cmd>Telescope find_files<CR>', desc = 'Find Files'},
    {'<leader>b', '<cmd>Telescope buffers<CR>', desc = 'List Buffers'},
    {'<leader>ps', '<cmd>Telescope live_grep<CR>', desc = 'grep_string'},
    {'<C-p>', '<cmd>Telescope git_files<CR>', desc = 'Git Files'},
  },
}
