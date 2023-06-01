local lspconfig = require('lspconfig')

local MY_FQBN = "P1AM-100:samd:P1AM-100_native"

lspconfig.arduino_language_server.setup {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    filetypes = {"cpp", "h", "arduino" },
    cmd = {
        "arduino-language-server",
        "-cli-config", "C:/Users/rduggan/AppData/Local/Arduino15/arduino-cli.yaml",
        "-fqbn",
        MY_FQBN
    }
}
