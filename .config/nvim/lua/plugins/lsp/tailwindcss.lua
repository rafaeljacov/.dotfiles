local capabilities = require('cmp_nvim_lsp').default_capabilities()

return {
    capabilities = capabilities,
    settings = {
        tailwindCSS = {
            includeLanguages = {
                templ = "html",
            },
        },
    },
}
