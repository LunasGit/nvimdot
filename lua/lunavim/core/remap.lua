vim.g.mapleader = " "
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- colorpicker
vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>")
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>")

-- Lazy
vim.keymap.set("n", "<leader>ll", vim.cmd.Lazy, { desc = "Open Lazy Window" })

-- telescope
vim.keymap.set("n", '<leader>pf', '<cmd>Telescope find_files<CR>')
vim.keymap.set("n", '<leader>b', '<cmd>Telescope buffers<CR>')
vim.keymap.set("n", '<leader>ps', '<cmd>Telescope live_grep<CR>')
vim.keymap.set("n", '<C-p>', '<cmd>Telescope git_files<CR>')

-- pane navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- split management
vim.keymap.set("n", "<leader>ws", "<C-w><C-s><C-w><C-j>") -- split window horizontally and jump to it
vim.keymap.set("n", "<leader>ts", "<C-w><C-s><C-w><C-j>:term<CR>") -- split window horizontally as terminal and jump to it
vim.keymap.set("n", "<leader>wv", "<C-w>v<C-w><C-l>") -- split window vertically and jump to it
vim.keymap.set("n", "<leader>tv", "<C-w>v<C-w><C-l>:term<CR>") -- split window vertically as terminal and jump to it
vim.keymap.set("n", "<leader>wn", "<C-w>n") -- create new window and start editing empty file in it
vim.keymap.set("n", "<leader>wd", "<C-w>c") -- close currently active window

-- exit terminal mode with esc
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- buffer
vim.keymap.set("n", "<Tab>", vim.cmd.bnext) -- next buffer
vim.keymap.set("n", "<leader>db", vim.cmd.bd) -- remove current buffer

-- general quality of life
vim.keymap.set("v", "K",":m '<-2<CR>gv=gv") -- move selection up
vim.keymap.set("v", "J",":m '>+1<CR>gv=gv") -- move selection down

vim.keymap.set("n", "J", "mzJ`z") -- leave cursor in place while appending lines below
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in middle during half page jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in middle during half page jumping
vim.keymap.set("n", "n", "nzzzv") -- keep cursor in middle during searches
vim.keymap.set("n", "N", "Nzzzv") -- keep cursor in middle during searches

vim.keymap.set("n", "<leader>y", "\"+y") -- yank into system clipboard
vim.keymap.set("v", "<leader>y", "\"+y") -- yank into system clipboard visual mode
vim.keymap.set("n", "<leader>Y", "\"+Y") -- yank full line to system clipboard

vim.keymap.set("n", "<leader>d", "\"_d") --delete into void
vim.keymap.set("v", "<leader>d", "\"_d") --delete into void visual mode

vim.keymap.set("n", "<leader>lg", vim.cmd.LazyGit)

-- Fugitive Mapping
vim.keymap.set("n", "<leader>gc", ':Git commit -m ""<left>')
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>")

-- quickfix nav
--[[ vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") ]]

-- replace all instances of word you are on
vim.keymap.set("n", "<leader>ra", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- hop
