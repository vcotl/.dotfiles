require("gitsigns").setup {
  numhl      = true,
  preview_config = {
    border = "none",
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map("n", "]c", function()
      if vim.wo.diff then return "]c" end
      vim.schedule(function() gs.next_hunk() end)
      return "<Ignore>"
    end, {expr=true})

    map("n", "[c", function()
      if vim.wo.diff then return "[c" end
      vim.schedule(function() gs.prev_hunk() end)
      return "<Ignore>"
    end, {expr=true})

    -- Actions
    map({"n", "v"}, "<space>hs", ":Gitsigns stage_hunk<CR>")
    map({"n", "v"}, "<space>hr", ":Gitsigns reset_hunk<CR>")
    map("n", "<space>hS", gs.stage_buffer)
    map("n", "<space>hu", gs.undo_stage_hunk)
    map("n", "<space>hR", gs.reset_buffer)
    map("n", "<space>hp", gs.preview_hunk)
    map("n", "<space>hb", function() gs.blame_line{full=true} end)
    map("n", "<space>tb", gs.toggle_current_line_blame)
    map("n", "<space>hd", gs.diffthis)
    map("n", "<space>hD", function() gs.diffthis("~") end)
    map("n", "<space>td", gs.toggle_deleted)

    -- Text object
    map({"o", "x"}, "ih", ":<C-U>Gitsigns select_hunk<CR>")
  end
}

vim.cmd "hi DiffAdd      gui=none    guifg=NONE          guibg=#064f00"
vim.cmd "hi DiffChange   gui=none    guifg=NONE          guibg=#4f4f00"
vim.cmd "hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#cc2121"
vim.cmd "hi DiffText     gui=none    guifg=NONE          guibg=#00414f"
