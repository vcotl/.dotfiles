require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = { "markdown" },
  },
  indent = {
    enable = true,
    disable = { "python" },
  },
  ensure_installed = {
    "bash",
    "make",
    "c",
    "lua",
    "python",
    "markdown",
    "latex",
    "html",
    "css",
    "javascript",
    "json",
    "yaml",
    "toml",
    "dockerfile",
  },
}
