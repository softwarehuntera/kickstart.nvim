return {
  {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'williamboman/mason.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'tsserver', 'rust_analyzer', 'pylsp' },
    }

    require('lspconfig').rust_analyzer.setup {}
    require('lspconfig').tsserver.setup {}
    require('lspconfig').pylsp.setup {}
  end,
}

