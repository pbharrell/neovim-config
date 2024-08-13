local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'clangd',
    'pyright',
    'marksman',
    },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


