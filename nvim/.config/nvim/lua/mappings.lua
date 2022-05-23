vim.api.nvim_set_keymap("n", "<space>d", "<cmd>nohlsearch<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>b1", "<cmd>BufferLineGoToBuffer 1<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b2", "<cmd>BufferLineGoToBuffer 2<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b3", "<cmd>BufferLineGoToBuffer 3<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b4", "<cmd>BufferLineGoToBuffer 4<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b5", "<cmd>BufferLineGoToBuffer 5<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b6", "<cmd>BufferLineGoToBuffer 6<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b7", "<cmd>BufferLineGoToBuffer 7<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b8", "<cmd>BufferLineGoToBuffer 8<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>b9", "<cmd>BufferLineGoToBuffer 9<cr>", { noremap = true })
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

vim.api.nvim_set_keymap("n", "<c-o>", "<cmd>m .+1<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-p>", "<cmd>m .-2<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>oo", "o<esc>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>O", "O<esc>j", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>r", "<cmd>w! | silent !compiler %<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>ts", "<cmd>lua MiniTrailspace.trim()<cr>", { noremap = true })

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true})
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true})

vim.api.nvim_set_keymap("v", "<c-o>", "xp`[V`]", { noremap = true })
vim.api.nvim_set_keymap("v", "<c-p>", "xkP`[V`]", { noremap = true })

vim.api.nvim_set_keymap("v", "<c-c>", "xp`[V`]", { noremap = true })
vim.api.nvim_set_keymap("v", "<c-p>", "xkP`[V`]", { noremap = true })
