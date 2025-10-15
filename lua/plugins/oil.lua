return {
  'stevearc/oil.nvim',
  opts = {},
  keys = {
    {
      '-',
      function()
        require('oil').open()
      end,
      desc = 'Open Oil',
      mode = 'n',
    },
  },
  dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  lazy = false,
}
