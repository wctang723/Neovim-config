return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').set_icon {
      go = {
        icon = '󰟓',
        color = '#6FA7D1',
        cterm_color = '65',
        name = 'go',
      },
    }
  end,
}
