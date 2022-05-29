vim.keymap.set("n", "<space>d", "<cmd>nohlsearch<cr>", { noremap = true })

vim.keymap.set("n", "<space>b1", "<cmd>BufferLineGoToBuffer 1<cr>", { noremap = true })
vim.keymap.set("n", "<space>b2", "<cmd>BufferLineGoToBuffer 2<cr>", { noremap = true })
vim.keymap.set("n", "<space>b3", "<cmd>BufferLineGoToBuffer 3<cr>", { noremap = true })
vim.keymap.set("n", "<space>b4", "<cmd>BufferLineGoToBuffer 4<cr>", { noremap = true })
vim.keymap.set("n", "<space>b5", "<cmd>BufferLineGoToBuffer 5<cr>", { noremap = true })
vim.keymap.set("n", "<space>b6", "<cmd>BufferLineGoToBuffer 6<cr>", { noremap = true })
vim.keymap.set("n", "<space>b7", "<cmd>BufferLineGoToBuffer 7<cr>", { noremap = true })
vim.keymap.set("n", "<space>b8", "<cmd>BufferLineGoToBuffer 8<cr>", { noremap = true })
vim.keymap.set("n", "<space>b9", "<cmd>BufferLineGoToBuffer 9<cr>", { noremap = true })
vim.keymap.set("n", "<space>bn", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.keymap.set("n", "<space>bp", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.keymap.set("n", "<space>b>", "<cmd>BufferLineMoveNext<cr>", { noremap = true })
vim.keymap.set("n", "<space>b<", "<cmd>BufferLineMovePrev<cr>", { noremap = true })
vim.keymap.set("n", "<space>bh", "<cmd>BufferLinePick<cr>", { noremap = true })
vim.keymap.set("n", "<space>bc", "<cmd>bd<cr>", { noremap = true })

vim.keymap.set("n", "<space>hw", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set("n", "<space>hl", "<cmd>HopLine<cr>", { noremap = true })
vim.keymap.set("n", "<space>hc", "<cmd>HopChar1<cr>", { noremap = true })

vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<cr>", { noremap = true })
vim.keymap.set("n", "<space>fg", "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.keymap.set("n", "<space>bf", "<cmd>Telescope buffers<cr>", { noremap = true })
vim.keymap.set("n", "<space>fh", "<cmd>Telescope help_tags<cr>", { noremap = true })
vim.keymap.set("n", "<space>fb", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr>", {noremap = true})

vim.keymap.set("n", "<c-h>", "<cmd>lua require('Navigator').left()<cr>", { noremap = true })
vim.keymap.set("n", "<c-j>", "<cmd>lua require('Navigator').down()<cr>", { noremap = true })
vim.keymap.set("n", "<c-k>", "<cmd>lua require('Navigator').up()<cr>", { noremap = true })
vim.keymap.set("n", "<c-l>", "<cmd>lua require('Navigator').right()<cr>", { noremap = true})

vim.keymap.set("n", "<c-w>l", "<c-w>5>", { noremap = true})
vim.keymap.set("n", "<c-w>h", "<c-w>5<", { noremap = true})
vim.keymap.set("n", "<c-w>k", "<c-w>5+", { noremap = true})
vim.keymap.set("n", "<c-w>j", "<c-w>5-", { noremap = true})

vim.keymap.set("n", "<c-o>", "<cmd>m .+1<cr>", { noremap = true })
vim.keymap.set("n", "<c-p>", "<cmd>m .-2<cr>", { noremap = true })

vim.keymap.set("n", "<space>oo", "o<esc>k", { noremap = true })
vim.keymap.set("n", "<space>O", "O<esc>j", { noremap = true })

vim.keymap.set("n", "<space>r", "<cmd>w! | silent !compiler %<cr>", { noremap = true })
vim.keymap.set("n", "<space>ts", "<cmd>lua MiniTrailspace.trim()<cr>", { noremap = true })
vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })

vim.keymap.set({"v", "o"}, 'a"', '2i"', { noremap = true})
vim.keymap.set({"v", "o"}, "a'", "2i'", { noremap = true})
vim.keymap.set({"v", "o"}, "a`", "2i`", { noremap = true})

vim.keymap.set("v", "<", "<gv", { noremap = true})
vim.keymap.set("v", ">", ">gv", { noremap = true})

vim.keymap.set("v", "<c-o>", "xp`[V`]", { noremap = true })
vim.keymap.set("v", "<c-p>", "xkP`[V`]", { noremap = true })
