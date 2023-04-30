-- Documentacion: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.html.setup {
    capabilities = capabilities,
}

--require'lspconfig'.cssls.setup {
--  capabilities = capabilities,
--}

require'lspconfig'.java_language_server.setup{
    capabilities = capabilities,
}

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
}

require'lspconfig'.pylsp.setup{
    capabilities = capabilities,
}

