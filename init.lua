require('lunavim/core/remap')
require('lunavim/core/set')
require('lunavim.lazy')
vim.cmd[[colorscheme tokyonight-moon]]

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#a6fefb", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ff96ff", bold = true })
