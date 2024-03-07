local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'lunavim.plugins' },
  { import = 'lunavim.plugins.lsp' },
  { import = 'lunavim.plugins.git' },
  { import = 'lunavim.plugins.qol' },
  { import = 'lunavim.plugins.layout' },
  { import = 'lunavim.plugins.python' },
  { import = 'lunavim.plugins.completion' },
},

{
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

