-- Autocommand to ensure the filetype is set correctly and the LSP is enabled
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = { "*.v", "*.sv", "*.vh" },
    callback = function()
        -- 1. Set the filetype first
        vim.bo.filetype = "verilog"

        -- 2. Then, ensure the Verible LSP is enabled/started for this filetype
        -- Note: If you are using a plugin like 'nvim-lspconfig' with 'mason',
        -- the setup function would usually handle this, but if you're using
        -- the built-in vim.lsp.config/enable directly, this is safer.
        -- If Verible is already enabled globally, this step might be redundant
        -- if your version of nvim-lspconfig handles autostarting on filetype.
        -- If 'vim.lsp.enable' is what you use, keep it.
        -- **A clean approach is often to rely on the filetype and the lspconfig config:**
        -- vim.lsp.enable('verible')
    end,
})

local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("verible", {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
    },
})

vim.lsp.enable("verible")
