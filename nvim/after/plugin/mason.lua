require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "arduino_language_server" },
}
