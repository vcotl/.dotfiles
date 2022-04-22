local cmp = require "cmp"
local ui = require "ui"

cmp.setup {
    completion = {
        autocomplete = false,
    },

    mapping = {
        ["<c-d>"] = cmp.mapping.scroll_docs(-5),
        ["<c-f>"] = cmp.mapping.scroll_docs(5),
        ["<c-e>"] = cmp.mapping.close(),
        ["<cr>"] = function(fallback)
            if cmp.visible() then
                return cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                }(fallback)
            else
                return fallback()
            end
        end,
        ["<c-n>"] = function(fallback)
            if cmp.visible() then
                return cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }(fallback)
            else
                return cmp.mapping.complete()(fallback)
            end
        end,
        ["<c-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    sources = {
        { name = "path", priority_weight = 110 },
        { name = "nvim_lsp", max_item_count = 20, priority_weight = 100 },
        { name = "buffer", max_item_count = 5, priority_weight = 70 },
        { name = "nvim_lua" },
        { name = "luasnip" },
    },
    
    formatting = {
        format = function(entry, vim_item)
            local menu_map = {
                gh_issues = "[Issues]",
                buffer = "[Buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[API]",
                path = "[Path]",
                luasnip = "[Snip]",
                tmux = "[Tmux]",
                look = "[Look]",
                rg = "[RG]",
            }

            vim_item.menu = menu_map[entry.source.name] or string.format("[%s]", entry.source.name)

            vim_item.kind = ui.completion_item_kind[vim_item.kind]
            return vim_item
        end,
    },
}

cmp.setup.cmdline(":", { 
    sources = {
        { name = "cmdline" },
    },
})

