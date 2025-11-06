local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("neocmake", {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        enable_external_cmake_lint = true,
        scan_cmake_in_package = true,
        format = {
            enable = false
        },
    },
})

vim.lsp.enable("neocmake")
