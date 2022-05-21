require("Comment").setup {
  ---LHS of toggle mappings in NORMAL + VISUAL mode
  ---@type table
  toggler = {
    ---Line-comment toggle keymap
    line = '<space>cc',
    ---Block-comment toggle keymap
    block = 'gbc',
  },

  ---LHS of operator-pending mappings in NORMAL + VISUAL mode
  ---@type table
  opleader = {
      ---Line-comment keymap
      line = '<space>c',
      ---Block-comment keymap
      block = 'gb',
  },

  ---LHS of extra mappings
  ---@type table
  extra = {
      ---Add comment on the line above
      above = '<space>cO',
      ---Add comment on the line below
      below = '<space>co',
      ---Add comment at the end of line
      eol = '<space>cA',
  },
}
