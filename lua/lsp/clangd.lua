-- Add the following to ~/.clangd
-- CompileFlags:
--   Add: [-std=c++23]
--   Compiler: <path>

local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("clangd", {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        "/opt/clangd_21.1.0/bin/clangd",
        -- "--header-insertion=iwyu",
        -- "--completion-style=detailed",
        -- "--function-arg-placeholders=0",
        -- "--query-driver=/usr/local/lib/gcc-15.2.0/bin//g++15.2.0",
    },
})

vim.lsp.enable("clangd")
