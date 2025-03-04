vim.g.mapleader = " "
local keyset = vim.keymap.set

keyset("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
keyset("i", "jj", "<Esc>")

keyset("n", "K", vim.lsp.buf.hover, {})

-- Lazy
keyset("n", "<leader>ll", vim.cmd.Lazy, { desc = "Open Lazy Window" })

-- telescope
keyset("n", '<leader>pf', '<cmd>Telescope find_files<CR>')
keyset("n", '<leader>b', '<cmd>Telescope buffers<CR>')
keyset("n", '<leader>ps', '<cmd>Telescope live_grep<CR>')
keyset("n", '<C-p>', '<cmd>Telescope git_files<CR>')

-- pane navigation
keyset("n", "<C-h>", "<C-w>h")
keyset("n", "<C-j>", "<C-w>j")
keyset("n", "<C-k>", "<C-w>k")
keyset("n", "<C-l>", "<C-w>l")


keyset("n", "<leader>ts", "<C-w><C-s><C-w><C-j>:term<CR>") -- split window horizontally as terminal and jump to it
keyset("n", "<leader>tv", "<C-w>v<C-w><C-l>:term<CR>") -- split window vertically as terminal and jump to it

-- exit terminal mode with esc
keyset("t", "<esc>", "<C-\\><C-n>")

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true, desc = "Close buffer" })

-- general quality of life
keyset("v", "K",":m '<-2<CR>gv=gv") -- move selection up
keyset("v", "J",":m '>+1<CR>gv=gv") -- move selection down

keyset("n", "J", "mzJ`z") -- leave cursor in place while appending lines below
keyset("n", "<C-d>", "<C-d>zz") -- keep cursor in middle during half page jumping
keyset("n", "<C-u>", "<C-u>zz") -- keep cursor in middle during half page jumping
keyset("n", "n", "nzzzv") -- keep cursor in middle during searches
keyset("n", "N", "Nzzzv") -- keep cursor in middle during searches

keyset("n", "<leader>y", "\"+y") -- yank into system clipboard
keyset("v", "<leader>y", "\"+y") -- yank into system clipboard visual mode
keyset("n", "<leader>Y", "\"+Y") -- yank full line to system clipboard

keyset("n", "<leader>lg", vim.cmd.LazyGit)

-- Fugitive Mapping
keyset("n", "<leader>ga", ':Git add %:h<CR>')
keyset("n", "<leader>gc", ':Git commit -m ""<left>')
keyset("n", "<leader>gp", ":Git push<CR>")
keyset("n", "<leader>gd", ":Git diff<CR>")

-- replace all instances of word you are on
keyset("n", "<leader>rn", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

