return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      {
        model = 'gpt-4.1',
        temperature = 0.1, -- Lower = focused, higher = creative
        window = {
          layout = 'vertical', -- 'vertical', 'horizontal', 'float'
          width = 0.5, -- 50% of screen width
        },
        auto_insert_mode = true,
      },
    },
    keys = {
      {
        '<leader>cc',
        function()
          require('CopilotChat').toggle()
        end,
        desc = 'Toggle CopilotChat',
        mode = 'n',
      },
    },
  },
}
