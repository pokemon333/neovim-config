return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    end
  },
  {
      "nvim-telescope/telescope-file-browser.nvim",
      config  = function()
        local M = require('telescope')
        M.setup {
          defaults = {
            layout_strategy = "horizontal",
            layout_config = {
              prompt_position = 'top'
            }
          }
        } 
        M.load_extension "file_browser"
        vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
      end
  }
}
