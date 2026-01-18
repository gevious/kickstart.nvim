-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Git
  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'Gdiffsplit', 'Gread', 'Gwrite' },
    keys = {
      { '<leader>gs', '<cmd>Git<CR>', desc = 'Git status' },
      { '<leader>gb', '<cmd>Git blame<CR>', desc = 'Git blame' },
      { '<leader>gl', '<cmd>Git log<CR>', desc = 'Git log' },
      { '<leader>gfo', '<cmd>Git fetch origin<CR>', desc = 'Git fetch origin' },
    },
  },

  -- Table mode
  { 'dhruvasagar/vim-table-mode' },

  -- Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } },
    keys = {
      {
        '<leader>ha',
        function()
          require('harpoon.mark').add_file()
        end,
        desc = 'Harpoon Add File',
      },
      {
        '<leader>hh',
        function()
          require('harpoon.ui').toggle_quick_menu()
        end,
        desc = 'Harpoon Menu',
      },
      {
        '<leader>hf',
        function()
          require('harpoon.ui').nav_file(1)
        end,
        desc = 'Jump to 1st file',
      },
      {
        '<leader>hd',
        function()
          require('harpoon.ui').nav_file(2)
        end,
        desc = 'Jump to 2nd file',
      },
      {
        '<leader>hs',
        function()
          require('harpoon.ui').nav_file(3)
        end,
        desc = 'Jump to 3nd file',
      },
    },
  },
}
