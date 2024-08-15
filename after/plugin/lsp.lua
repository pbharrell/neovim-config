local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false,
  })
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'clangd',
    'pyright',
    'marksman',
    'lua_ls',
    },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,
  },
})

require('lspconfig').clangd.setup{
    -- The default settings for `clangd` in Neovim
    cmd = { "clangd", "--background-index", "--compile-commands-dir=build" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = require('lspconfig.util').root_pattern(".git", "compile_commands.json"),
    single_file_support = true,

    -- Additional clangd settings (if needed)
    settings = {
        clangd = {
            -- Enable clangd to index all files in the directory
            fallbackFlags = { "-std=c++17" },
            completion = {
                enableSnippets = true,
            },
            semanticHighlighting = true,
        },
    },
}


