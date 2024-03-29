return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","tsserver","intelephense"}
      })
    end
  },
  {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        lspconfig.intelephense.setup({
            capabilities = capabilities
         }); 
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        }); 
        lspconfig.tsserver.setup({
            capabilities = capabilities
        }); 
        lspconfig.tailwindcss.setup({
            capabilities = capabilities
        }); 
        lspconfig.volar.setup({
            capabilities = capabilities
        }); 
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim' ,
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
