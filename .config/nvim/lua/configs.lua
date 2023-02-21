local lspconfig = require('lspconfig')

require('lualine').setup {
    options = {
        icons_enabled = false,
        --theme = 'justfalcon'
    }
}

require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all" (the four listed parsers should always be installed)
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "help",
        "rust",
        "go",
        --"elixir",
        "java",
        "scala",
        "erlang",
        "javascript",
        "typescript",
        "python",
        --"heex",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}

--local lsp = require('lsp-zero')
--lsp.preset('recommended')
--lsp.setup()
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
})

--lspconfig.pyright.setup({})

require("nvim-tree").setup({
    renderer = {
        icons = {
             --show = {
             --    folder = false,
             --    folder_arrow = false,
             --    file = false,
             --},
             --symlink_arrow = "->",
        }
    }
})

--require("dracula").setup()
--vim.cmd[[colorscheme dracula]]
vim.cmd[[colorscheme justfalcon]]
--vim.cmd[[highlight Normal ctermfg=grey ctermbg=black]]
--vim.cmd[[colorscheme gruvbox]]

require("telescope").setup({})

--require("telescope").setup({
--    defaults = {
--        mappings = {
--            i = {
--                ["<Esc>"] = require("telescope.actions").close,
--            },
--        },
--    },
--})
