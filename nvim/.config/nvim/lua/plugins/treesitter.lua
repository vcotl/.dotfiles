require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
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
    "html",
    "css",
    "javascript",
    "json",
    "yaml",
    "toml",
    "dockerfile",
  },
}
