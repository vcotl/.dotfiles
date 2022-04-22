require("material").setup {
    contrast = {
        floating_windows = true,
        cursor_line = true,
    },
    disable = {
        background = false,
    },
    lualine_style = "default",
}

vim.g.material_style = "darker"
vim.cmd "colorscheme material"
