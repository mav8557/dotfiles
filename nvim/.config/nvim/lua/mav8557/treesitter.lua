local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    highlight = {
        enable = true,
        ensure_installed = {"python", "c", "rust", "go", "help", "lua"}
    }
}

