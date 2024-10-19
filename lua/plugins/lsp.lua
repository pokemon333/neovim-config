return {
  {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require'cmp'
      local t = {
        name = 'Mg Mg',
        title = 'something'
      }
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true })
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          --{ name = 'vsnip' }, -- For vsnip users.
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer' },
        })
      })
    end
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    config = function()

    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

    end
  },
  {
    "williamboman/mason.nvim",
    config = function()
       require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
       local capabilities = require('cmp_nvim_lsp').default_capabilities()
       require("mason-lspconfig").setup()
       require("mason-lspconfig").setup_handlers {
         function (server_name) -- default handler (optional)
           require("lspconfig")[server_name].setup {
              capabilities = capabilities,
              format = true
           }
         end,
      }
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
     end
  },
}
