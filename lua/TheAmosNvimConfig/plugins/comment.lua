return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      keywords = {
        NOTE = { icon = '', color = 'hint', alt = { 'INFO' } },
        TODO = { icon = '' },
      },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
