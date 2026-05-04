return {
  {
    -- Collection of various small independent plugins/modules
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
      -- Better Around/Inside textobjects
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      --  `:h MiniAi-builtin-textobjects`
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup { highlight_duration = 1000, n_lines = 500, search_method = 'cover' }

      require('mini.pairs').setup()
      -- For auto pairing in html
      local lt_opts = { action = 'open', pair = '<>', register = { cr = false } }
      local rt_opts = { action = 'close', pair = '<>', register = { cr = false } }
      local minipairs = require 'mini.pairs'
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'html',
        callback = function()
          minipairs.map_buf(0, 'i', '<', lt_opts)
          minipairs.map_buf(0, 'i', '>', rt_opts)
        end,
      })

      -- Simple statusline.
      require('mini.statusline').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}
