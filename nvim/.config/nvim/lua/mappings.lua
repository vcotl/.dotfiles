vim.api.nvim_set_keymap("n", "<space>d", "<cmd>nohlsearch<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>bn", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bp", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bh", "<cmd>BufferLinePick<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bc", "<cmd>bd<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>hw", "<cmd>HopWord<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>hl", "<cmd>HopLine<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>hc", "<cmd>HopChar1<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>ff", "<cmd>Telescope find_files<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>fg", "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bf", "<cmd>Telescope buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>fh", "<cmd>Telescope help_tags<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>fb", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr>", {noremap = true})

vim.api.nvim_set_keymap("n", "<c-h>", "<cmd>lua require('Navigator').left()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-j>", "<cmd>lua require('Navigator').down()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-k>", "<cmd>lua require('Navigator').up()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", "<cmd>lua require('Navigator').right()<cr>", { noremap = true})

vim.api.nvim_set_keymap("n", "<c-w>l", "<c-w>5>", { noremap = true})
vim.api.nvim_set_keymap("n", "<c-w>h", "<c-w>5<", { noremap = true})
vim.api.nvim_set_keymap("n", "<c-w>k", "<c-w>5+", { noremap = true})
vim.api.nvim_set_keymap("n", "<c-w>j", "<c-w>5-", { noremap = true})

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true})
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true})

vim.api.nvim_set_keymap("n", "<c-o>", "<cmd>m .+1<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-p>", "<cmd>m .-2<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>oo", "o<esc>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>O", "O<esc>j", { noremap = true })

